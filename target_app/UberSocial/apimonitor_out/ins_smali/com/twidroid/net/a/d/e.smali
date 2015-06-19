.class public Lcom/twidroid/net/a/d/e;
.super Lcom/twidroid/net/a/b/o;
.source "SourceFile"
.field private final s:Ljava/lang/String;
.field private final t:Ljava/lang/String;
.field  v:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.field  w:I
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/twidroid/net/a/b/o;-><init>(Lcom/twidroid/model/twitter/c;I)V
const-string v0, "YFrogVideoApi"
iput-object v0, p0, Lcom/twidroid/net/a/d/e;->s:Ljava/lang/String;
const-string v0, "07DIOSVY8420f425b68fa8fc23ff2f131112ec01"
iput-object v0, p0, Lcom/twidroid/net/a/d/e;->t:Ljava/lang/String;
return-void
.end method
.method public static a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)Lcom/twidroid/net/a/d/e;
.registers 3
const-string v0, "twitvidio"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Lcom/twidroid/net/a/d/d;
invoke-direct {v0, p0}, Lcom/twidroid/net/a/d/d;-><init>(Lcom/twidroid/model/twitter/c;)V
:goto_d
return-object v0
:cond_e
const-string v0, "twitvidcom"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
new-instance v0, Lcom/twidroid/net/a/d/c;
invoke-direct {v0, p0}, Lcom/twidroid/net/a/d/c;-><init>(Lcom/twidroid/model/twitter/c;)V
goto :goto_d
:cond_1c
const-string v0, "posterous"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
new-instance v0, Lcom/twidroid/net/a/d/a;
invoke-direct {v0, p0}, Lcom/twidroid/net/a/d/a;-><init>(Lcom/twidroid/model/twitter/c;)V
goto :goto_d
:cond_2a
const-string v0, "tweetphoto"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
new-instance v0, Lcom/twidroid/net/a/d/b;
invoke-direct {v0, p0}, Lcom/twidroid/net/a/d/b;-><init>(Lcom/twidroid/model/twitter/c;)V
goto :goto_d
:cond_38
new-instance v0, Lcom/twidroid/net/a/d/e;
invoke-direct {v0, p0}, Lcom/twidroid/net/a/d/e;-><init>(Lcom/twidroid/model/twitter/c;)V
goto :goto_d
.end method
.method public static a(Landroid/app/Activity;Landroid/net/Uri;)Z
.registers 10
const/4 v7, 0x1
const/4 v3, 0x0
const/4 v6, 0x0
new-array v2, v7, [Ljava/lang/String;
const-string v0, "mime_type"
aput-object v0, v2, v6
invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
move-object v1, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-nez v0, :cond_18
move v0, v6
:goto_17
return v0
:cond_18
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
aget-object v1, v2, v6
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_27
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
:cond_27
invoke-interface {v0}, Landroid/database/Cursor;->close()V
if-eqz v3, :cond_36
const-string v0, "video/"
invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_36
move v0, v7
goto :goto_17
:cond_36
move v0, v6
goto :goto_17
.end method
.method public static c(Ljava/lang/String;)Z
.registers 2
const-string v0, "/video/media"
invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "YFrog Video"
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
.registers 18
const-string v0, "YFrogVideoApi"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "FileUrl: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "content:"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b3
invoke-static {p3, p2}, Lcom/twidroid/net/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
move-result-object v0
const-string v1, "YFrogVideoApi"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Decode URI "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
iput-object v1, p0, Lcom/twidroid/net/a/d/e;->v:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
if-nez p7, :cond_bb
const/16 v0, 0xa
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "username"
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/twidroid/net/a/d/e;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "password"
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/twidroid/net/a/d/e;->c:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "source"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "twidroid"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "key"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "07DIOSVY8420f425b68fa8fc23ff2f131112ec01"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "message"
aput-object v2, v0, v1
const/16 v1, 0x9
aput-object p6, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/d/e;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
move-object v7, v0
:goto_84
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p3
invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
const-string v1, "_data"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
if-nez p7, :cond_e0
const-string v1, "http://yfrog.com/api/upload"
:goto_a2
const-string v3, "media"
iget-object v4, p0, Lcom/twidroid/net/a/d/e;->v:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
const-string v5, "video/3gpp"
move-object v0, p0
move-object v2, v7
move-object/from16 v7, p7
move-object/from16 v8, p8
invoke-virtual/range {v0 .. v8}, Lcom/twidroid/net/a/d/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Lorg/apache/http/HttpEntity;
const/4 v0, 0x0
return-object v0
:cond_b3
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "RAW Files not support for video"
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
:cond_bb
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "source"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "twidroid"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "key"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "07DIOSVY8420f425b68fa8fc23ff2f131112ec01"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "message"
aput-object v2, v0, v1
const/4 v1, 0x5
aput-object p6, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/d/e;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
move-object v7, v0
goto :goto_84
:cond_e0
const-string v1, "https://yfrog.com/api/xauth_upload"
goto :goto_a2
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v0, 0x0
:try_start_1
invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V
invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
move-result-object v1
new-instance v2, Lorg/xml/sax/InputSource;
new-instance v3, Ljava/io/StringReader;
invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
move-result-object v2
const-string v1, "rsp"
invoke-interface {v2, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
move-result-object v3
const/4 v1, 0x0
const/4 v4, 0x0
invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;
move-result-object v4
invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;
move-result-object v4
const-string v5, "stat"
invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
move-result-object v4
invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
move-result-object v4
const-string v5, "ok"
invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v4
if-nez v4, :cond_87
const/4 v2, 0x0
invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;
move-result-object v2
invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;
move-result-object v2
move v6, v0
move-object v0, v1
move v1, v6
:goto_49
invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I
move-result v3
if-ge v1, v3, :cond_6e
invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;
move-result-object v3
invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;
move-result-object v3
const-string v4, "mediaurl"
invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v3
if-nez v3, :cond_6b
invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;
move-result-object v0
invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;
move-result-object v0
invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
move-result-object v0
:cond_6b
add-int/lit8 v1, v1, 0x1
goto :goto_49
:cond_6e
const-string v1, "YFrogVideoApi"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "::parseResponse: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_87
const-string v0, "err"
invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;
move-result-object v1
invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;
move-result-object v1
const-string v2, "code"
invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
move-result-object v1
invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
new-instance v2, Lcom/ubermedia/net/a/a/a;
const/4 v3, 0x0
invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;
move-result-object v0
invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;
move-result-object v0
const-string v3, "msg"
invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
move-result-object v0
invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v2
:catch_bd
:try_end_bd
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bd} :catch_bd
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public c()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public d()Z
.registers 2
const/4 v0, 0x1
return v0
.end method