package cn.springmvc.service;

import java.util.List;

public interface WorkService {

	List<Object> getWorkByPro(String id);

	Object searchWork(String name, String workType, String pType, String px, String address, int page);

	Object getAu(String id);

	Object getComment(String pid, String type, int page);

}
