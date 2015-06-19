.class public Lcom/lenovo/anyshare/sdk/internal/bj;
.super Lcom/lenovo/content/base/ContentContainer;
.source "Category.java"
.field protected d:I
.field protected e:Ljava/lang/String;
.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/content/base/ContentContainer;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/bj;->d:I
return v0
.end method
.method protected a(Lcom/lenovo/content/base/ContentProperties;)V
.registers 4
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentContainer;->a(Lcom/lenovo/content/base/ContentProperties;)V
const-string/jumbo v0, "category_id"
const/4 v1, -0x1
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/bj;->d:I
const-string/jumbo v0, "category_path"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bj;->e:Ljava/lang/String;
return-void
.end method