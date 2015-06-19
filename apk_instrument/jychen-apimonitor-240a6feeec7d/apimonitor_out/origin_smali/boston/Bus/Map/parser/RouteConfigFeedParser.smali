.class public Lboston/Bus/Map/parser/RouteConfigFeedParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RouteConfigFeedParser.java"


# static fields
.field private static final dirTagKey:Ljava/lang/String; = "dirTag"

.field private static final directionKey:Ljava/lang/String; = "direction"

.field private static final latKey:Ljava/lang/String; = "lat"

.field private static final latitudeKey:Ljava/lang/String; = "lat"

.field private static final lonKey:Ljava/lang/String; = "lon"

.field private static final longitudeKey:Ljava/lang/String; = "lon"

.field private static final nameKey:Ljava/lang/String; = "name"

.field private static final pathKey:Ljava/lang/String; = "path"

.field private static final pointKey:Ljava/lang/String; = "point"

.field private static final routeKey:Ljava/lang/String; = "route"

.field private static final stopIdKey:Ljava/lang/String; = "stopId"

.field private static final stopKey:Ljava/lang/String; = "stop"

.field private static final tagKey:Ljava/lang/String; = "tag"

.field private static final titleKey:Ljava/lang/String; = "title"


# instance fields
.field private allStops:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/StopLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final busStop:Landroid/graphics/drawable/Drawable;

.field private currentPath:Lboston/Bus/Map/data/Path;

.field private currentRoute:Ljava/lang/String;

.field private currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

.field private inDirection:Z

.field private inPath:Z

.field private inRoute:Z

.field private inStop:Z

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/RouteConfig;",
            ">;"
        }
    .end annotation
.end field

.field private pathIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->allStops:Ljava/util/HashMap;

    iput-object p1, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->busStop:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "stop"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inStop:Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string v0, "direction"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput-boolean v1, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inDirection:Z

    goto :goto_c

    :cond_18
    const-string v0, "route"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iput-boolean v1, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inRoute:Z

    iget-object v0, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->map:Ljava/util/HashMap;

    iget-object v1, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRoute:Ljava/lang/String;

    iget-object v2, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRoute:Ljava/lang/String;

    iput-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

    goto :goto_c

    :cond_30
    const-string v0, "path"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inPath:Z

    iget-object v0, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentPath:Lboston/Bus/Map/data/Path;

    invoke-virtual {v0}, Lboston/Bus/Map/data/Path;->condense()V

    iget-object v0, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

    iget v1, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->pathIndex:I

    iget-object v2, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentPath:Lboston/Bus/Map/data/Path;

    invoke-virtual {v0, v1, v2}, Lboston/Bus/Map/data/RouteConfig;->addPath(ILboston/Bus/Map/data/Path;)V

    :cond_4c
    iput-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentPath:Lboston/Bus/Map/data/Path;

    iget v0, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->pathIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->pathIndex:I

    goto :goto_c
.end method

.method public fillAndSaveMapping(Lboston/Bus/Map/data/RoutePool;Lboston/Bus/Map/database/DatabaseHelper;Z)V
    .registers 4

    return-void
.end method

.method public fillMapping(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/RouteConfig;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_20
    return-void
.end method

.method public runParse(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v3, "stop"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v3, 0x1

    iput-boolean v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inStop:Z

    iget-boolean v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inRoute:Z

    if-eqz v3, :cond_53

    iget-boolean v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inDirection:Z

    if-nez v3, :cond_53

    const-string v3, "tag"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "lat"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v3, "lon"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "title"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->allStops:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboston/Bus/Map/data/StopLocation;

    if-nez v0, :cond_49

    new-instance v0, Lboston/Bus/Map/data/StopLocation;

    iget-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->busStop:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v5}, Lboston/Bus/Map/data/StopLocation;-><init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->allStops:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    iget-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v3, v4, v0}, Lboston/Bus/Map/data/RouteConfig;->addStop(Ljava/lang/String;Lboston/Bus/Map/data/StopLocation;)V

    iget-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v0, v3}, Lboston/Bus/Map/data/StopLocation;->addRoute(Lboston/Bus/Map/data/RouteConfig;)V

    :cond_53
    :goto_53
    return-void

    :cond_54
    const-string v3, "direction"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const/4 v3, 0x1

    iput-boolean v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inDirection:Z

    iget-boolean v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inRoute:Z

    if-eqz v3, :cond_53

    const-string v3, "tag"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "title"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v3, v4, v5, v10}, Lboston/Bus/Map/data/RouteConfig;->addDirection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_7b
    const-string v3, "route"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    const/4 v3, 0x1

    iput-boolean v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inRoute:Z

    const-string v3, "tag"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRoute:Ljava/lang/String;

    new-instance v3, Lboston/Bus/Map/data/RouteConfig;

    iget-object v4, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRoute:Ljava/lang/String;

    invoke-direct {v3, v4}, Lboston/Bus/Map/data/RouteConfig;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentRouteConfig:Lboston/Bus/Map/data/RouteConfig;

    goto :goto_53

    :cond_98
    const-string v3, "path"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const/4 v3, 0x1

    iput-boolean v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->inPath:Z

    new-instance v3, Lboston/Bus/Map/data/Path;

    iget v4, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->pathIndex:I

    invoke-direct {v3, v4}, Lboston/Bus/Map/data/Path;-><init>(I)V

    iput-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentPath:Lboston/Bus/Map/data/Path;

    goto :goto_53

    :cond_ad
    const-string v3, "point"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    const-string v3, "lat"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v3, "lon"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v3, p0, Lboston/Bus/Map/parser/RouteConfigFeedParser;->currentPath:Lboston/Bus/Map/data/Path;

    invoke-virtual {v3, v6, v7, v8, v9}, Lboston/Bus/Map/data/Path;->addPoint(DD)V

    goto :goto_53

    :cond_cf
    const-string v3, "Error"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lboston/Bus/Map/util/FeedException;

    invoke-direct {v4}, Lboston/Bus/Map/util/FeedException;-><init>()V

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
