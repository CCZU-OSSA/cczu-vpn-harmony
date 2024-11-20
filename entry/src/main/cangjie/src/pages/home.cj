/**
 * Created on 2024/11/20
 */
package ohos_app_cangjie_entry.pages

import ohos.base.*
import ohos.component.*

import ohos.state_manage.*
import ohos.state_macro_manage.*
import cj_res_entry.app

@Component
public class home{

    @State
    var isStarting:Bool=false

    func build(){
        Column{
            Column{
                Text("CCZU VPN for HarmonyOS").fontSize(20).fontWeight(FontWeight.Bold)
            }

            Column{
                Button{
                    Row{
                        Image(@r(app.media.app_icon)).height(90.percent).padding(10)
                        Column{
                            Text(if(isStarting){"已开启\n点击关闭"}else{"已停止\n点击启动"})
                        }
                    }.height(100)
                    .width(100.percent)
                }.shape(ShapeType.Normal)
                .borderRadius(15)
                .backgroundColor(Color.WHITE)
                .onClick{event=>this.isStarting=!isStarting}
            }.margin(top:10)

            Column{
                Button{
                    Row{
                        Image(@r(app.media.app_icon)).height(90.percent).padding(10)
                        Column{
                            Text("配置")
                        }
                    }.height(100)
                    .width(100.percent)
                }.shape(ShapeType.Normal)
                .borderRadius(15)
                .backgroundColor(Color.WHITE)
            }.margin(top:10)

        }.width(95.percent)
        .height(100.percent)
    }
}