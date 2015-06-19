.class public Lcom/twidroid/net/a/d/c;
.super Lcom/twidroid/net/a/d/e;
.source "SourceFile"
.field public static final s:Ljava/lang/String; = "telly://open-video"
.field private static final t:Ljava/lang/String; = "TwitVidcom"
.field private u:Ljava/lang/String;
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/net/a/d/e;-><init>(Lcom/twidroid/model/twitter/c;)V
const-string v0, "http://im.twitvid.com/api/upload"
iput-object v0, p0, Lcom/twidroid/net/a/d/c;->u:Ljava/lang/String;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "TwidVidcom"
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
.registers 18
const-string v0, "content:"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_bc
invoke-static {p3, p2}, Lcom/twidroid/net/a/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
move-result-object v0
new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
iput-object v1, p0, Lcom/twidroid/net/a/d/c;->v:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
if-nez p7, :cond_c4
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "message"
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-virtual {p6}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_26
move-object p6, p2
:cond_26
aput-object p6, v0, v1
const/4 v1, 0x2
const-string v2, "username"
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/twidroid/net/a/d/c;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "password"
aput-object v2, v0, v1
const/4 v1, 0x5
iget-object v2, p0, Lcom/twidroid/net/a/d/c;->c:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "source"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "twidroyd"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/d/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
move-object v8, v0
move-object/from16 v7, p7
:goto_4d
invoke-virtual {p4}, Lcom/twidroid/d/v;->ax()Z
move-result v0
if-eqz v0, :cond_91
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p3
invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_107
const-string v0, "TwitVidcom"
const-string v2, "Image found in Media Library - using media library data "
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
const-string v0, "geo_latitude"
const-string v2, "latitude"
invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "geo_longitude"
const-string v2, "longitude"
invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_8e
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_91
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
iget-object v1, p0, Lcom/twidroid/net/a/d/c;->u:Ljava/lang/String;
const-string v3, "media"
iget-object v4, p0, Lcom/twidroid/net/a/d/c;->v:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
const-string v5, "video/3gpp"
move-object v0, p0
move-object v2, v8
move-object/from16 v8, p8
invoke-virtual/range {v0 .. v8}, Lcom/twidroid/net/a/d/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Lorg/apache/http/HttpEntity;
const/4 v0, 0x0
return-object v0
:cond_bc
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "RAW Files not support for video"
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
:cond_c4
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "message"
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-virtual {p6}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_d5
move-object p6, p2
:cond_d5
aput-object p6, v0, v1
const/4 v1, 0x2
const-string v2, "source"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "twidroyd"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "x_auth_service_provider"
aput-object v2, v0, v1
const/4 v1, 0x5
const/4 v2, 0x0
aget-object v2, p7, v2
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "x_verify_credentials_authorization"
aput-object v2, v0, v1
const/4 v1, 0x7
const/4 v2, 0x1
aget-object v2, p7, v2
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/d/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const/4 v7, 0x0
move-object v8, v0
goto/16 :goto_4d
:cond_107
const-string v0, "TwitVidcom"
const-string v2, "Image NOT found in Media Library - using current location "
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_start_10e
const-string v0, "location"
invoke-virtual {p3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
new-instance v2, Landroid/location/Criteria;
invoke-direct {v2}, Landroid/location/Criteria;-><init>()V
const/4 v3, 0x1
invoke-static {v0, v2, v3}, Ldroidbox/android/location/LocationManager;->getBestProvider(Landroid/location/LocationManager;Landroid/location/Criteria;Z)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
const-string v2, "geo_latitude"
new-instance v3, Ljava/lang/Double;
invoke-static {v0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v4
invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V
invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "geo_longitude"
new-instance v3, Ljava/lang/Double;
invoke-static {v0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v4
invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V
invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_148
.catch Ljava/lang/Exception; {:try_start_10e .. :try_end_148} :catch_14a
goto/16 :goto_8e
:catch_14a
move-exception v0
goto/16 :goto_8e
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
if-nez v4, :cond_6e
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
if-ge v1, v3, :cond_ab
invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;
move-result-object v3
invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;
move-result-object v3
const-string v4, "media_url"
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
:try_end_a4
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a4} :catch_a4
:catch_a4
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:cond_ab
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
const-string v0, "twitvid.com"
return-object v0
.end method
.method public d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method