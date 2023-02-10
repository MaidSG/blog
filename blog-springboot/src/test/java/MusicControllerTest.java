import com.alibaba.fastjson.JSON;
import com.wy.blog.config.ResTemplateConfig;
import com.wy.blog.dto.MusicDTO;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.*;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

/**
 * @author WY
 * @date 2023/2/10
 **/
@SpringBootTest
@ExtendWith(SpringExtension.class)
//@ContextConfiguration(classes = {ResTemplateConfig.class })
public class MusicControllerTest {

//    @Autowired
//    private RestTemplate restTemplate;
//
//    @Test
//    public void RestTemplateTestPost() {
//
//        //String url = "http://127.0.0.1:5000/register";
//        String url = "https://n.xlz122.cn/api/playlist/detail";
//
//        //LinkedMultiValueMap一个键对应多个值，对应format-data的传入类型
//        LinkedMultiValueMap<String, String> request = new LinkedMultiValueMap<>();
//        //入参
//        request.set("id","3779629");
//
//        //请求
//        String result = restTemplate.postForObject(url,request,String.class);
//        System.out.println(result);
//        MusicDTO musicDTO = JSON.parseObject(result,MusicDTO.class);
//        ResponseEntity<String> responseEntity = restTemplate.postForEntity(url, request, String.class);
//        System.out.println("responseEntity.getBody() = " + responseEntity.getBody());
//
//    }
//
//
//    @Test
//    public void test() {
//        RestTemplate client = new RestTemplate();
//        HttpHeaders headers = new HttpHeaders();
//        HttpMethod method = HttpMethod.POST;
//        String url = "https://n.xlz122.cn/api/playlist/detail";
//        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
//        params.add("id","3779629");
//        // 以表单的方式提交
//        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
//        // 将请求头部和参数合成一个请求
//        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(params, headers);
//        // 执行HTTP请求，将返回的结构使用String类格式化
//        ResponseEntity<String> response = client.exchange(url, method, requestEntity, String.class);
//
//    }






}
