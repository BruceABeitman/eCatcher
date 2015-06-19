.class public final Lcom/instagram/android/a/b/h;
.super Ljava/lang/Object;
.source "FollowDestinationBannerRowViewBinder.java"
.method public static a(Landroid/content/Context;)Landroid/view/View;
.registers 4
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->follow_destination_banner:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/android/a/b/j;
invoke-direct {v1}, Lcom/instagram/android/a/b/j;-><init>()V
invoke-static {v1, v0}, Lcom/instagram/android/a/b/j;->a(Lcom/instagram/android/a/b/j;Landroid/view/View;)Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v0
.end method
.method public static a(Lcom/instagram/android/a/b/j;Lcom/instagram/feed/e/b;)V
.registers 4
invoke-static {p0}, Lcom/instagram/android/a/b/j;->a(Lcom/instagram/android/a/b/j;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/android/a/b/i;
invoke-direct {v1, p1}, Lcom/instagram/android/a/b/i;-><init>(Lcom/instagram/feed/e/b;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method