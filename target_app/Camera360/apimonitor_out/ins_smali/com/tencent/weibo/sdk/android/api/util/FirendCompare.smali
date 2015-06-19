.class public Lcom/tencent/weibo/sdk/android/api/util/FirendCompare;
.super Ljava/lang/Object;
.source "FirendCompare.java"
.implements Ljava/util/Comparator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/tencent/weibo/sdk/android/model/Firend;Lcom/tencent/weibo/sdk/android/model/Firend;)I
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/tencent/weibo/sdk/android/model/Firend;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->cn2py(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lcom/tencent/weibo/sdk/android/model/Firend;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->cn2py(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/tencent/weibo/sdk/android/model/Firend;
check-cast p2, Lcom/tencent/weibo/sdk/android/model/Firend;
invoke-virtual {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/api/util/FirendCompare;->compare(Lcom/tencent/weibo/sdk/android/model/Firend;Lcom/tencent/weibo/sdk/android/model/Firend;)I
move-result v0
return v0
.end method