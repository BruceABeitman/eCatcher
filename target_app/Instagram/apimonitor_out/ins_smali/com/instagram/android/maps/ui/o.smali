.class final Lcom/instagram/android/maps/ui/o;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"
.implements Lcom/instagram/common/ui/b/a;
.field final synthetic a:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
.field final synthetic b:Lcom/instagram/android/h/b;
.field final synthetic c:Lcom/instagram/android/maps/ui/m;
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;Lcom/instagram/android/h/b;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/maps/ui/o;->c:Lcom/instagram/android/maps/ui/m;
iput-object p2, p0, Lcom/instagram/android/maps/ui/o;->a:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
iput-object p3, p0, Lcom/instagram/android/maps/ui/o;->b:Lcom/instagram/android/h/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/ui/o;->a:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
iget-object v1, p0, Lcom/instagram/android/maps/ui/o;->b:Lcom/instagram/android/h/b;
invoke-virtual {v1, p1}, Lcom/instagram/android/h/b;->a(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setUrl(Ljava/lang/String;)V
return-void
.end method