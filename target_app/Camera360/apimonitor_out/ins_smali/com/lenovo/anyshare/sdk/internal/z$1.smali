.class  Lcom/lenovo/anyshare/sdk/internal/z$1;
.super Ljava/lang/Object;
.source "HomeServlet.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/z;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/z;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/z$1;->a:Lcom/lenovo/anyshare/sdk/internal/z;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/lenovo/content/base/ContentItem;Lcom/lenovo/content/base/ContentItem;)I
.registers 14
const/4 v6, 0x0
const/4 v8, -0x1
const/4 v7, 0x1
move-object v0, p1
check-cast v0, Lcom/lenovo/content/item/AppItem;
move-object v3, p2
check-cast v3, Lcom/lenovo/content/item/AppItem;
invoke-virtual {v0}, Lcom/lenovo/content/item/AppItem;->getPackageName()Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, ".lenovo."
invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_23
invoke-virtual {v0}, Lcom/lenovo/content/item/AppItem;->getPackageName()Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, ".leos."
invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
if-eqz v9, :cond_50
:cond_23
move v2, v7
:goto_24
invoke-virtual {v3}, Lcom/lenovo/content/item/AppItem;->getPackageName()Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, ".lenovo."
invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_3e
invoke-virtual {v3}, Lcom/lenovo/content/item/AppItem;->getPackageName()Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, ".leos."
invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
if-eqz v9, :cond_52
:cond_3e
move v5, v7
:goto_3f
if-nez v2, :cond_54
if-nez v5, :cond_54
invoke-virtual {v0}, Lcom/lenovo/content/item/AppItem;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3}, Lcom/lenovo/content/item/AppItem;->getName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v7
:goto_4f
:cond_4f
return v7
:cond_50
move v2, v6
goto :goto_24
:cond_52
move v5, v6
goto :goto_3f
:cond_54
if-eqz v2, :cond_8b
if-eqz v5, :cond_8b
invoke-virtual {v0}, Lcom/lenovo/content/item/AppItem;->getPackageName()Ljava/lang/String;
move-result-object v6
iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/z$1;->a:Lcom/lenovo/anyshare/sdk/internal/z;
iget-object v9, v9, Lcom/lenovo/anyshare/sdk/internal/z;->mContext:Landroid/content/Context;
invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
invoke-virtual {v3}, Lcom/lenovo/content/item/AppItem;->getPackageName()Ljava/lang/String;
move-result-object v6
iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/z$1;->a:Lcom/lenovo/anyshare/sdk/internal/z;
iget-object v9, v9, Lcom/lenovo/anyshare/sdk/internal/z;->mContext:Landroid/content/Context;
invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v1, :cond_7c
move v7, v8
goto :goto_4f
:cond_7c
if-nez v4, :cond_4f
invoke-virtual {v0}, Lcom/lenovo/content/item/AppItem;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3}, Lcom/lenovo/content/item/AppItem;->getName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v7
goto :goto_4f
:cond_8b
if-eqz v2, :cond_4f
move v7, v8
goto :goto_4f
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/lenovo/content/base/ContentItem;
check-cast p2, Lcom/lenovo/content/base/ContentItem;
invoke-virtual {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/z$1;->a(Lcom/lenovo/content/base/ContentItem;Lcom/lenovo/content/base/ContentItem;)I
move-result v0
return v0
.end method