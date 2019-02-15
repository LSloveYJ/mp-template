package ${package.Service};

import ${package.Entity}.${entity};
import ${superServiceClassPackage};

/**
 * <p>
 * ${table.comment!} 服务类
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
<#if kotlin>
interface ${table.serviceName} : ${superServiceClass}<${entity}>
<#else>
public interface ${table.serviceName} extends ${superServiceClass}<${entity}> {

    /**
    * 查询
    * @param ${entity}DTO
    * @return
    */
    Integer select(${entity}DTO ${table.name}DTO);


    /**
    * 新增
    * @param ${entity}DTO
    * @return
    */
    Integer insert(${entity}DTO ${table.name}DTO);

    /**
    * 删除
    * @param ${entity}DTO
    * @return
    */
    Integer delete(${entity}DTO ${table.name}DTO);


    /**
    * 更新
    * @param ${entity}DTO
    * @return
    */
    Integer update(${entity}DTO ${table.name}DTO);
}
</#if>
