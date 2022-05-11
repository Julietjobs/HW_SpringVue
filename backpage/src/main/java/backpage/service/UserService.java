package backpage.service;


import com.baomidou.mybatisplus.extension.service.IService;
import backpage.entity.User;

import java.util.List;

public interface UserService extends IService<User> {
    List<User> getAll();
}
