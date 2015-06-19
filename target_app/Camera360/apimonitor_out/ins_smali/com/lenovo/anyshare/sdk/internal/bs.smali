.class public Lcom/lenovo/anyshare/sdk/internal/bs;
.super Lcom/lenovo/anyshare/sdk/internal/bp;
.source "LocalFileLoader.java"
.field private static final c:Ljava/lang/String;
.field private static d:Ljava/lang/String;
.field private static e:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bs;->c:Ljava/lang/String;
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bs;->d:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bs;->e:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bp;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bs;->d:Ljava/lang/String;
if-nez v0, :cond_d
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/bs;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bs;->d:Ljava/lang/String;
:cond_d
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 6
new-instance v0, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v0}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
const-string/jumbo v1, "id"
invoke-virtual {v0, v1, p1}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "ver"
const-string/jumbo v2, ""
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "name"
invoke-virtual {v0, v1, p2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "has_thumbnail"
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "file_path"
invoke-virtual {v0, v1, p1}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "is_root_folder"
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/bs;->a(Ljava/lang/String;)Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "is_volume"
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/bs;->b(Ljava/lang/String;)Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bk;
invoke-direct {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/bk;-><init>(Lcom/lenovo/content/base/ContentProperties;)V
return-object v1
.end method
.method private a(Landroid/content/Context;Ljava/io/File;)Lcom/lenovo/content/base/ContentItem;
.registers 7
if-eqz p2, :cond_8
invoke-virtual {p2}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_10
:cond_8
const-string/jumbo v1, "LocalContentLoaderFile is null or not exist."
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
const/4 v1, 0x0
:goto_f
return-object v1
:cond_10
new-instance v0, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v0}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
const-string/jumbo v1, "id"
invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "ver"
invoke-virtual {p2}, Ljava/io/File;->lastModified()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "name"
invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "has_thumbnail"
invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v2}, Lcom/lenovo/anyshare/sdk/internal/bw;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "file_path"
invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "file_size"
invoke-virtual {p2}, Ljava/io/File;->length()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "is_exist"
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v1, "last_modified"
invoke-virtual {p2}, Ljava/io/File;->lastModified()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v1, Lcom/lenovo/content/item/FileItem;
invoke-direct {v1, v0}, Lcom/lenovo/content/item/FileItem;-><init>(Lcom/lenovo/content/base/ContentProperties;)V
goto :goto_f
.end method
.method private a(Ljava/io/File;)Z
.registers 5
const/4 v0, 0x1
invoke-virtual {p1}, Ljava/io/File;->isHidden()Z
move-result v1
if-eqz v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "LOST.DIR"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_7
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bs;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_7
const/4 v0, 0x0
goto :goto_7
.end method
.method private static a(Ljava/lang/String;)Z
.registers 2
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bs;->d:Ljava/lang/String;
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private static b(Ljava/lang/String;)Z
.registers 4
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bs;->e:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1c
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/anyshare/sdk/internal/bd$a;
iget-object v2, v1, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6
const/4 v2, 0x1
:goto_1b
return v2
:cond_1c
const/4 v2, 0x0
goto :goto_1b
.end method
.method private static c(Landroid/content/Context;)Ljava/lang/String;
.registers 7
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bd;->a(Landroid/content/Context;)Ljava/util/List;
move-result-object v4
sput-object v4, Lcom/lenovo/anyshare/sdk/internal/bs;->e:Ljava/util/List;
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/bs;->e:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-nez v4, :cond_11
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/bs;->c:Ljava/lang/String;
:goto_10
return-object v4
:cond_11
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/bs;->e:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
const/4 v5, 0x1
if-ne v4, v5, :cond_26
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/bs;->e:Ljava/util/List;
const/4 v5, 0x0
invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/anyshare/sdk/internal/bd$a;
iget-object v4, v4, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
goto :goto_10
:cond_26
const/4 v2, 0x0
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/bs;->e:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2d
:cond_2d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_4a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/lenovo/anyshare/sdk/internal/bd$a;
if-eqz v2, :cond_47
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
iget-object v5, v3, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
if-le v4, v5, :cond_2d
:cond_47
iget-object v2, v3, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
goto :goto_2d
:cond_4a
new-instance v0, Ljava/io/File;
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
goto :goto_10
.end method
.method public a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 7
if-eqz p2, :cond_b
const-string/jumbo v3, "/"
invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_d
:cond_b
sget-object p2, Lcom/lenovo/anyshare/sdk/internal/bs;->d:Ljava/lang/String;
:cond_d
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_1e
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v3
if-nez v3, :cond_20
:cond_1e
const/4 v3, 0x0
:goto_1f
return-object v3
:cond_20
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/bs;->e:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_26
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_49
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/bd$a;
iget-object v3, v2, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_26
iget-object v3, v2, Lcom/lenovo/anyshare/sdk/internal/bd$a;->a:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_26
iget-object v3, v2, Lcom/lenovo/anyshare/sdk/internal/bd$a;->a:Ljava/lang/String;
invoke-direct {p0, p2, v3}, Lcom/lenovo/anyshare/sdk/internal/bs;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
goto :goto_1f
:cond_49
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, p2, v3}, Lcom/lenovo/anyshare/sdk/internal/bs;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
goto :goto_1f
.end method
.method public a(Lcom/lenovo/content/base/ContentContainer;)V
.registers 21
move-object/from16 v0, p1
instance-of v0, v0, Lcom/lenovo/anyshare/sdk/internal/bk;
move/from16 v17, v0
invoke-static/range {v17 .. v17}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
move-object/from16 v9, p1
check-cast v9, Lcom/lenovo/anyshare/sdk/internal/bk;
new-instance v13, Ljava/util/ArrayList;
invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/bs;->a:Landroid/content/Context;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lcom/lenovo/anyshare/sdk/internal/bd;->a(Landroid/content/Context;)Ljava/util/List;
move-result-object v16
invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I
move-result v17
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-le v0, v1, :cond_8b
new-instance v4, Ljava/io/File;
const/16 v17, 0x0
invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/lenovo/anyshare/sdk/internal/bd$a;
move-object/from16 v0, v17
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v14
invoke-virtual {v9}, Lcom/lenovo/anyshare/sdk/internal/bk;->a()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v17
if-eqz v17, :cond_8b
invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_56
:cond_56
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v17
if-eqz v17, :cond_85
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/lenovo/anyshare/sdk/internal/bd$a;
new-instance v4, Ljava/io/File;
iget-object v0, v15, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v17
iget-object v0, v15, Lcom/lenovo/anyshare/sdk/internal/bd$a;->a:Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, p0
move-object/from16 v1, v17
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bs;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
if-eqz v3, :cond_56
invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_56
:cond_85
move-object/from16 v0, p1
invoke-virtual {v0, v5, v13}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
:goto_8a
:cond_8a
return-void
:cond_8b
new-instance v6, Ljava/io/File;
invoke-virtual {v9}, Lcom/lenovo/anyshare/sdk/internal/bk;->a()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v17
if-nez v17, :cond_a2
invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z
move-result v17
if-eqz v17, :cond_8a
:cond_a2
invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v8
if-eqz v8, :cond_8a
const/4 v10, 0x0
:goto_a9
array-length v0, v8
move/from16 v17, v0
move/from16 v0, v17
if-ge v10, v0, :cond_ef
aget-object v7, v8, v10
move-object/from16 v0, p0
invoke-direct {v0, v7}, Lcom/lenovo/anyshare/sdk/internal/bs;->a(Ljava/io/File;)Z
move-result v17
if-eqz v17, :cond_bd
:goto_ba
:cond_ba
add-int/lit8 v10, v10, 0x1
goto :goto_a9
:cond_bd
invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z
move-result v17
if-eqz v17, :cond_db
invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v17
invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p0
move-object/from16 v1, v17
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bs;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
if-eqz v3, :cond_ba
invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_ba
:cond_db
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/bs;->a:Landroid/content/Context;
move-object/from16 v17, v0
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v1, v7}, Lcom/lenovo/anyshare/sdk/internal/bs;->a(Landroid/content/Context;Ljava/io/File;)Lcom/lenovo/content/base/ContentItem;
move-result-object v12
if-eqz v12, :cond_ba
invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_ba
:cond_ef
move-object/from16 v0, p1
invoke-virtual {v0, v5, v13}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
goto :goto_8a
.end method
.method public b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.registers 5
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bs;->a:Landroid/content/Context;
invoke-direct {p0, v1, v0}, Lcom/lenovo/anyshare/sdk/internal/bs;->a(Landroid/content/Context;Ljava/io/File;)Lcom/lenovo/content/base/ContentItem;
move-result-object v1
return-object v1
.end method