.class  Lcom/tencent/weibo/sdk/android/network/ReqParam$1;
.super Ljava/lang/Object;
.source "ReqParam.java"
.implements Ljava/util/Comparator;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/network/ReqParam;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/network/ReqParam;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam$1;->this$0:Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Ljava/lang/String;
invoke-virtual {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/network/ReqParam$1;->compare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
.registers 4
invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_10
const/4 v0, -0x1
goto :goto_7
:cond_10
const/4 v0, 0x0
goto :goto_7
.end method