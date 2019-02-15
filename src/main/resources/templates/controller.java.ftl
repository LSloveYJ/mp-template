package ${package.Controller};


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import com.xin.framework.core.entity.ResponseResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;

<#if restControllerStyle>
import org.springframework.web.bind.annotation.RestController;
<#else>
import org.springframework.stereotype.Controller;
</#if>
<#if superControllerClassPackage??>
import ${superControllerClassPackage};
</#if>

/**
 * <p>
 * ${table.comment!} 前端控制器
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
<#if restControllerStyle>
@RestController
<#else>
@Controller
</#if>
@RequestMapping("<#if package.ModuleName??>/${package.ModuleName}</#if>/<#if controllerMappingHyphenStyle??>${controllerMappingHyphen}<#else>${table.entityPath}</#if>")
<#if kotlin>
class ${table.controllerName}<#if superControllerClass??> : ${superControllerClass}()</#if>
<#else>
<#if superControllerClass??>
public class ${table.controllerName} extends ${superControllerClass} {
<#else>
public class ${table.controllerName} {
</#if>

   @Autowired
   private ${table.serviceName} ${table.serviceName};


    /**
    * 查询
    * @param ${entity}DTO
    * @return
    */
    @PostMapping("/select")
    public ResponseResult select(@RequestBody  ${entity}DTO ${table.name}DTO) {
    return ResponseResult.success(${table.serviceName}.select(${table.name}DTO));
    }

    /**
    * 新增
    *
    * @param  ${entity}DTO
    * @return
    */
    @PostMapping("/create")
    public ResponseResult create(@RequestBody @Validated({${entity}DTO.Create.class})  ${entity}DTO ${table.name}DTO) {
    return ResponseResult.success(${table.serviceName}.insert(${table.name}DTO));
    }

    /**
    * 删除
    * @param ${entity}DTO
    * @return
    */
    @PostMapping("/delete")
    public ResponseResult deleteById(@RequestBody @Validated({${entity}DTO.Delete.class})  ${entity}DTO ${table.name}DTO) {
    return ResponseResult.success(${table.serviceName}.delete(${table.name}DTO));
    }

    /**
    * 修改
    * @param ${entity}DTO
    * @return
    */
    @PostMapping("/update")
    public ResponseResult update(@RequestBody @Validated({${entity}DTO.Update.class})  ${entity}DTO ${table.name}DTO) {
    return ResponseResult.success(${table.serviceName}.update(${table.name}DTO));
    }

}
</#if>
