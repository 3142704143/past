package util;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FilesUpload{
	 // 上传配置
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
    
    public static void filesupload(HttpServletRequest req,String UPLOAD_DIRECTORY){
    	// 配置上传参数
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // 设置临时存储目录
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);
        // 设置最大文件上传值
        upload.setFileSizeMax(MAX_FILE_SIZE);
        // 设置最大请求值 (包含文件和表单数据)
        upload.setSizeMax(MAX_REQUEST_SIZE);
        // 中文处理
        upload.setHeaderEncoding("UTF-8"); 
        // 构造临时路径来存储上传的文件
        // 这个路径相对当前应用的目录
        String uploadPath = req.getRealPath("/") + File.separator + UPLOAD_DIRECTORY;
//        System.out.println("这个路径相对当前应用的目录"+uploadPath);
        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        Map map = new HashMap<String, Object>();
        try {
            // 解析请求的内容提取文件数据
            List<FileItem> formItems = upload.parseRequest(req);
            if (formItems != null && formItems.size() > 0) {
                // 迭代表单数据
                for (FileItem item : formItems) {
                    // 处理不在表单中的字段,即文件类型
                    if (!item.isFormField()&& item.getFieldName().equals("file")) {
                    	//获取上传文件名称
                        String fileName = new File(item.getName()).getName();
                        //创建上传文件的存储路径
                        String filePath = uploadPath + "/"+ fileName;
                        //存储文件
                        File storeFile = new File(filePath);
                        // 在控制台输出文件的上传路径
                        //System.out.println("文件的上传路径"+filePath);
                        // 保存文件到硬盘
                        item.write(storeFile);
                        //设置上传成功参数
                        map.put("fileName", UPLOAD_DIRECTORY+"/"+fileName);
                        map.put("errorCode", "0");
                		map.put("errorMsg", "success");
                		break;
                    }
                }
            }
        } catch (Exception ex) {
        	map.put("errorCode", "-1");
			map.put("errorMsg", "上传失败");
        }
    }
}
