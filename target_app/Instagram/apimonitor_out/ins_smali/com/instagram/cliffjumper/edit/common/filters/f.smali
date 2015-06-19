.class public final Lcom/instagram/cliffjumper/edit/common/filters/f;
.super Lcom/instagram/cliffjumper/edit/common/ui/c;
.source "BasicAdjustInfo.java"
.field private final a:Lcom/instagram/cliffjumper/edit/common/ui/a;
.field private final b:Lcom/instagram/cliffjumper/edit/common/filters/a;
.method public constructor <init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
.registers 6
invoke-virtual {p2}, Lcom/instagram/cliffjumper/edit/common/filters/a;->b()I
move-result v0
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lcom/instagram/cliffjumper/edit/common/filters/a;->a()I
move-result v1
invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/c;-><init>(Ljava/lang/String;I)V
iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/filters/f;->b:Lcom/instagram/cliffjumper/edit/common/filters/a;
iput-object p3, p0, Lcom/instagram/cliffjumper/edit/common/filters/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/a;
return-void
.end method
.method public final a()Lcom/instagram/cliffjumper/edit/common/filters/a;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/f;->b:Lcom/instagram/cliffjumper/edit/common/filters/a;
return-object v0
.end method
.method public final d()Lcom/instagram/cliffjumper/edit/common/ui/a;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/a;
return-object v0
.end method