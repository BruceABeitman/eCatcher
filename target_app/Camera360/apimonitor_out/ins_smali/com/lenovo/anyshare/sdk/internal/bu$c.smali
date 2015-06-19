.class public Lcom/lenovo/anyshare/sdk/internal/bu$c;
.super Lcom/lenovo/anyshare/sdk/internal/bu$a;
.source "LocalPIMLoaders.java"
.field private static final c:[Ljava/lang/String;
.field private static d:Lcom/lenovo/anyshare/sdk/internal/bu$c;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "display_name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "has_phone_number"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "sort_key"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string/jumbo v2, "photo_id"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string/jumbo v2, "lookup"
aput-object v2, v0, v1
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bu$c;->c:[Ljava/lang/String;
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bu$c;->d:Lcom/lenovo/anyshare/sdk/internal/bu$c;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bu$a;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)Lcom/lenovo/anyshare/sdk/internal/bu$c;
.registers 3
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bu$c;
invoke-direct {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bu$c;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bu$c;->d:Lcom/lenovo/anyshare/sdk/internal/bu$c;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bu$c;->d:Lcom/lenovo/anyshare/sdk/internal/bu$c;
return-object v0
.end method
.method private a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
.registers 10
const/4 v4, 0x0
const/4 v3, 0x1
new-instance v2, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v2}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v0
const-string/jumbo v5, "id"
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "ver"
const-string/jumbo v6, ""
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "name"
invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v5, 0x4
invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v5
if-lez v5, :cond_7b
move v1, v3
:goto_30
const-string/jumbo v5, "has_thumbnail"
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "is_exist"
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "contact_id"
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "sort_key"
const/4 v6, 0x3
invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "lookup_key"
const/4 v6, 0x5
invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "has_tel_number"
const/4 v6, 0x2
invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I
move-result v6
if-ne v6, v3, :cond_7d
:goto_6e
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v2, v5, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v3, Lcom/lenovo/content/item/ContactItem;
invoke-direct {v3, v2}, Lcom/lenovo/content/item/ContactItem;-><init>(Lcom/lenovo/content/base/ContentProperties;)V
return-object v3
:cond_7b
move v1, v4
goto :goto_30
:cond_7d
move v3, v4
goto :goto_6e
.end method
.method public b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.registers 11
const/4 v4, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "_id="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bu$c;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bu$c;->c:[Ljava/lang/String;
const-string/jumbo v5, "sort_key"
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-nez v6, :cond_40
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "cannot get cursor for: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
:goto_3f
return-object v4
:cond_40
:try_start_40
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_4c
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bu$c;->a:Landroid/content/Context;
invoke-direct {p0, v1, v6}, Lcom/lenovo/anyshare/sdk/internal/bu$c;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
:try_end_4b
.catchall {:try_start_40 .. :try_end_4b} :catchall_5c
.catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_50
move-result-object v4
:goto_4c
:cond_4c
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
goto :goto_3f
:catch_50
move-exception v7
:try_start_51
const-string/jumbo v1, "LocalPIMLoaders"
invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_5b
.catchall {:try_start_51 .. :try_end_5b} :catchall_5c
goto :goto_4c
:catchall_5c
move-exception v1
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v1
.end method
.method protected b(Lcom/lenovo/content/base/ContentContainer;)V
.registers 12
const/4 v3, 0x0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bu$c;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bu$c;->c:[Ljava/lang/String;
const-string/jumbo v5, "sort_key"
move-object v4, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-nez v6, :cond_39
const-string/jumbo v1, "LocalPIMLoaders"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "loadContainer(): URI:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", Cursor is null"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_38
return-void
:cond_39
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
:try_start_3e
:goto_3e
:cond_3e
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_5b
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bu$c;->a:Landroid/content/Context;
invoke-direct {p0, v1, v6}, Lcom/lenovo/anyshare/sdk/internal/bu$c;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
move-result-object v8
if-eqz v8, :cond_3e
invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_4f
.catchall {:try_start_3e .. :try_end_4f} :catchall_62
.catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4f} :catch_50
goto :goto_3e
:catch_50
move-exception v7
:try_start_51
const-string/jumbo v1, "LocalPIMLoaders"
invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_5b
.catchall {:try_start_51 .. :try_end_5b} :catchall_62
:cond_5b
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
invoke-virtual {p1, v3, v9}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
goto :goto_38
:catchall_62
move-exception v1
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v1
.end method