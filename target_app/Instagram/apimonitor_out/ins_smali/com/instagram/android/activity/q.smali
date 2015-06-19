.class final Lcom/instagram/android/activity/q;
.super Ljava/lang/Object;
.source "MainTabActivity.java"
.implements Lcom/instagram/common/h/d;
.field final synthetic a:Lcom/instagram/android/activity/MainTabActivity;
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/activity/q;->a:Lcom/instagram/android/activity/MainTabActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a()V
.registers 1
invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/e/a;->b()V
return-void
.end method
.method private static a(Lcom/instagram/android/c2dm/a;)Z
.registers 3
const-string v0, "newstab"
iget-object v1, p0, Lcom/instagram/android/c2dm/a;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
.registers 3
check-cast p1, Lcom/instagram/android/c2dm/a;
invoke-static {p1}, Lcom/instagram/android/activity/q;->a(Lcom/instagram/android/c2dm/a;)Z
move-result v0
return v0
.end method
.method public final synthetic b(Lcom/instagram/common/h/a;)V
.registers 2
invoke-static {}, Lcom/instagram/android/activity/q;->a()V
return-void
.end method