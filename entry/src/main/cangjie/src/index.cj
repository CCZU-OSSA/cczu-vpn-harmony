package ohos_app_cangjie_entry

import ohos.base.*
import ohos.component.*
import ohos.state_manage.*
import ohos.state_macro_manage.*
import ohos_app_cangjie_entry.pages.home


@Entry
@Component
class EntryView {
    func build() {
        Column{
            Tabs(BarPosition.End){
                TabContent{
                    home()
                }.tabBar("主页")

                TabContent{
                    Column{
                    }
                }.tabBar("我的")
            }.backgroundColor(Color(241,243,245))
        }.height(100.percent)
        .width(100.percent)
        .backgroundColor(Color(241,243,245))
    }
}
