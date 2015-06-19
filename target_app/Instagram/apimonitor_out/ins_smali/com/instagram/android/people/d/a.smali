.class public final Lcom/instagram/android/people/d/a;
.super Lcom/instagram/android/l/a/g;
.source "PeopleRowViewBinder.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/l/a/g;-><init>()V
return-void
.end method
.method protected final a(Landroid/content/Context;)Landroid/view/View;
.registers 5
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_user_dark:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;
.registers 6
const/4 v0, 0x0
invoke-super {p0, p1, p2, p3, v0}, Lcom/instagram/android/l/a/g;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method