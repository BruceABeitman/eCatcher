.class public final Lcom/instagram/android/c/a/h;
.super Lcom/instagram/api/j/b;
.source "ModifyPhotosOfYouRequest.java"
.field private final a:Ljava/lang/String;
.field private final b:Lcom/instagram/feed/d/l;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/api/j/a;)V
.registers 7
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p5}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p3, p0, Lcom/instagram/android/c/a/h;->a:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/android/c/a/h;->b:Lcom/instagram/feed/d/l;
return-void
.end method
.method private g()Ljava/lang/Void;
.registers 4
iget-object v0, p0, Lcom/instagram/android/c/a/h;->b:Lcom/instagram/feed/d/l;
iget-object v1, p0, Lcom/instagram/android/c/a/h;->a:Ljava/lang/String;
const-string v2, "approve"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->b(Z)V
iget-object v0, p0, Lcom/instagram/android/c/a/h;->b:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->y()V
iget-object v0, p0, Lcom/instagram/android/c/a/h;->a:Ljava/lang/String;
const-string v1, "approve"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
new-instance v0, Lcom/instagram/common/c/j;
invoke-virtual {p0}, Lcom/instagram/android/c/a/h;->l()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V
const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"
invoke-virtual {v0, v1}, Lcom/instagram/common/c/j;->a(Ljava/lang/String;)V
:cond_2a
const/4 v0, 0x0
return-object v0
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/c/a/h;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/c/a/h;->b:Lcom/instagram/feed/d/l;
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/instagram/android/c/a/h;->g()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "usertags/review/"
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method