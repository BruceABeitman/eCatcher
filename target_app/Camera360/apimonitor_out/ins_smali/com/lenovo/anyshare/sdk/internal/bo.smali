.class public abstract Lcom/lenovo/anyshare/sdk/internal/bo;
.super Ljava/lang/Object;
.source "BaseContentLoader.java"
.field protected a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bo;->a:Landroid/content/Context;
return-void
.end method
.method public static a(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)Lcom/lenovo/content/base/ContentContainer;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public static a(Lorg/json/JSONObject;)Lcom/lenovo/content/base/ContentObject;
.registers 5
const-string/jumbo v3, "iscontainer"
invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_22
const-string/jumbo v3, "iscontainer"
invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
:goto_10
const-string/jumbo v3, "type"
invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/content/base/ContentType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;
move-result-object v2
if-eqz v0, :cond_24
invoke-static {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/bo;->a(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
:goto_21
return-object v3
:cond_22
const/4 v0, 0x0
goto :goto_10
:cond_24
invoke-static {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/bo;->b(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)Lcom/lenovo/content/base/ContentItem;
move-result-object v3
goto :goto_21
.end method
.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.registers 11
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_e
:goto_e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_50
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/content/base/ContentItem;
const/4 v5, 0x0
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_1f
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_46
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_1f
invoke-virtual {v2, v6}, Lcom/lenovo/content/base/ContentItem;->compareTo(Lcom/lenovo/content/base/ContentObject;)I
move-result v7
if-ltz v7, :cond_4c
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_42
invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
const/4 v5, 0x1
:cond_46
if-nez v5, :cond_e
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_e
:cond_4c
invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_42
:cond_50
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object v0
.end method
.method public static b(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)Lcom/lenovo/content/base/ContentItem;
.registers 4
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_4c
:pswitch_b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "createItem(): Unsupport type:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_27
return-object v0
:pswitch_28
new-instance v0, Lcom/lenovo/content/item/AppDataItem;
invoke-direct {v0, p1}, Lcom/lenovo/content/item/AppDataItem;-><init>(Lorg/json/JSONObject;)V
goto :goto_27
:pswitch_2e
new-instance v0, Lcom/lenovo/content/item/MusicItem;
invoke-direct {v0, p1}, Lcom/lenovo/content/item/MusicItem;-><init>(Lorg/json/JSONObject;)V
goto :goto_27
:pswitch_34
new-instance v0, Lcom/lenovo/content/item/VideoItem;
invoke-direct {v0, p1}, Lcom/lenovo/content/item/VideoItem;-><init>(Lorg/json/JSONObject;)V
goto :goto_27
:pswitch_3a
new-instance v0, Lcom/lenovo/content/item/ContactItem;
invoke-direct {v0, p1}, Lcom/lenovo/content/item/ContactItem;-><init>(Lorg/json/JSONObject;)V
goto :goto_27
:pswitch_40
new-instance v0, Lcom/lenovo/content/item/PhotoItem;
invoke-direct {v0, p1}, Lcom/lenovo/content/item/PhotoItem;-><init>(Lorg/json/JSONObject;)V
goto :goto_27
:pswitch_46
new-instance v0, Lcom/lenovo/content/item/FileItem;
invoke-direct {v0, p1}, Lcom/lenovo/content/item/FileItem;-><init>(Lorg/json/JSONObject;)V
goto :goto_27
:pswitch_data_4c
.packed-switch 0x1
:pswitch_3a
:pswitch_b
:pswitch_b
:pswitch_b
:pswitch_28
:pswitch_2e
:pswitch_34
:pswitch_40
:pswitch_46
.end packed-switch
.end method
.method public static e(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 4
new-instance v0, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v0}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
const-string/jumbo v1, "id"
invoke-virtual {v0, v1, p1}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "name"
invoke-virtual {v0, v1, p1}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v1, Lcom/lenovo/content/base/ContentContainer;
invoke-direct {v1, p0, v0}, Lcom/lenovo/content/base/ContentContainer;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-object v1
.end method
.method public static f(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bl;
.registers 4
new-instance v0, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v0}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
const-string/jumbo v1, "id"
invoke-virtual {v0, v1, p1}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "name"
invoke-virtual {v0, v1, p1}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bl;
invoke-direct {v1, p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bl;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-object v1
.end method
.method public a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 5
if-eqz p2, :cond_1a
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/aq;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_6
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_15
const-string/jumbo v1, "items"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1c
:cond_15
invoke-virtual {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bo;->c(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v1
:goto_19
return-object v1
:cond_1a
const/4 v0, 0x0
goto :goto_6
:cond_1c
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->e(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_27
invoke-virtual {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bo;->d(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v1
goto :goto_19
:cond_27
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {p0, p1, p2, v1}, Lcom/lenovo/anyshare/sdk/internal/bo;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;I)Lcom/lenovo/content/base/ContentContainer;
move-result-object v1
goto :goto_19
.end method
.method protected a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;I)Lcom/lenovo/content/base/ContentContainer;
.registers 7
new-instance v0, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v0}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
const-string/jumbo v1, "id"
invoke-virtual {v0, v1, p2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "name"
invoke-virtual {v0, v1, p2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "category_id"
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bj;
invoke-direct {v1, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/bj;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-object v1
.end method
.method public a(Lcom/lenovo/content/base/ContentContainer;)V
.registers 5
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1d
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/aq;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_a
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_19
const-string/jumbo v2, "items"
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1f
:cond_19
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bo;->b(Lcom/lenovo/content/base/ContentContainer;)V
:goto_1c
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_a
:cond_1f
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->e(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_29
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bo;->c(Lcom/lenovo/content/base/ContentContainer;)V
goto :goto_1c
:cond_29
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bo;->d(Lcom/lenovo/content/base/ContentContainer;)V
goto :goto_1c
.end method
.method public abstract b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.end method
.method protected b(Lcom/lenovo/content/base/ContentContainer;)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "loadAllItemsContainer(): Don\'t support it:[ContentType:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", Path:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "BaseContentLoader: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bm;
const/4 v2, 0x5
invoke-direct {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/bm;-><init>(ILjava/lang/String;)V
throw v1
.end method
.method protected c(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 6
const/4 v0, 0x0
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_16
invoke-static {p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bo;->e(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
:goto_10
return-object v0
:pswitch_11
invoke-static {p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bo;->f(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bl;
move-result-object v0
goto :goto_10
:pswitch_data_16
.packed-switch 0x1
:pswitch_11
:pswitch_11
:pswitch_11
:pswitch_11
.end packed-switch
.end method
.method protected c(Lcom/lenovo/content/base/ContentContainer;)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "loadCategoryContainer(): Don\'t support it:[ContentType:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", Path:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "BaseContentLoader: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bm;
const/4 v2, 0x5
invoke-direct {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/bm;-><init>(ILjava/lang/String;)V
throw v1
.end method
.method protected d(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 4
invoke-static {p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bo;->e(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
return-object v0
.end method
.method protected d(Lcom/lenovo/content/base/ContentContainer;)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "loadCategory(): Don\'t support it:[ContentType:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", Path:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "BaseContentLoader: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bm;
const/4 v2, 0x5
invoke-direct {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/bm;-><init>(ILjava/lang/String;)V
throw v1
.end method