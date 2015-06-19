.class final Lcom/instagram/creation/photo/crop/f;
.super Ljava/lang/Object;
.source "CropFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/photo/crop/e;
.method constructor <init>(Lcom/instagram/creation/photo/crop/e;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/crop/f;->a:Lcom/instagram/creation/photo/crop/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/f;->a:Lcom/instagram/creation/photo/crop/e;
iget-object v0, v0, Lcom/instagram/creation/photo/crop/e;->b:Lcom/instagram/creation/photo/crop/b;
invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->c(Lcom/instagram/creation/photo/crop/b;)V
return-void
.end method