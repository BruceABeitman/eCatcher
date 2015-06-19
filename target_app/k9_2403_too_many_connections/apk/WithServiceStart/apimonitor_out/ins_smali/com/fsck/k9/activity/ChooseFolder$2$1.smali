.class  Lcom/fsck/k9/activity/ChooseFolder$2$1;
.super Ljava/lang/Object;
.source "ChooseFolder.java"
.implements Ljava/util/Comparator;
.field final synthetic this$1:Lcom/fsck/k9/activity/ChooseFolder$2;
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder$2;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$2$1;->this$1:Lcom/fsck/k9/activity/ChooseFolder$2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Ljava/lang/String;
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/activity/ChooseFolder$2$1;->compare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
.registers 8
const/4 v2, 0x1
const/4 v1, -0x1
const-string v4, "INBOX"
const-string v3, "-NONE-"
const-string v0, "-NONE-"
invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
move v0, v1
:goto_f
return v0
:cond_10
const-string v0, "-NONE-"
invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
move v0, v2
goto :goto_f
:cond_1a
const-string v0, "INBOX"
invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_24
move v0, v1
goto :goto_f
:cond_24
const-string v0, "INBOX"
invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2e
move v0, v2
goto :goto_f
:cond_2e
invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
goto :goto_f
.end method