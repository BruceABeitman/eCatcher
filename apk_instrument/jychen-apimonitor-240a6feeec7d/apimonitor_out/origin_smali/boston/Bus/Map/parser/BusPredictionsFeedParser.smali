.class public Lboston/Bus/Map/parser/BusPredictionsFeedParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BusPredictionsFeedParser.java"


# static fields
.field private static final dirTagKey:Ljava/lang/String; = "dirTag"

.field private static final epochTimeKey:Ljava/lang/String; = "epochTime"

.field private static final minutesKey:Ljava/lang/String; = "minutes"

.field private static final predictionKey:Ljava/lang/String; = "prediction"

.field private static final predictionsKey:Ljava/lang/String; = "predictions"

.field private static final routeTagKey:Ljava/lang/String; = "routeTag"

.field private static final stopTagKey:Ljava/lang/String; = "stopTag"

.field private static final vehicleKey:Ljava/lang/String; = "vehicle"


# instance fields
.field private currentLocation:Lboston/Bus/Map/data/StopLocation;

.field private currentRoute:Lboston/Bus/Map/data/RouteConfig;

.field private final stopMapping:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 2
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

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->stopMapping:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
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
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "predictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "routeTag"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->stopMapping:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboston/Bus/Map/data/RouteConfig;

    iput-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentRoute:Lboston/Bus/Map/data/RouteConfig;

    const/4 v0, 0x0

    iput-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentLocation:Lboston/Bus/Map/data/StopLocation;

    iget-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentRoute:Lboston/Bus/Map/data/RouteConfig;

    if-eqz v0, :cond_38

    const-string v0, "stopTag"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentRoute:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v0, v8}, Lboston/Bus/Map/data/RouteConfig;->getStop(Ljava/lang/String;)Lboston/Bus/Map/data/StopLocation;

    move-result-object v0

    iput-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentLocation:Lboston/Bus/Map/data/StopLocation;

    iget-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentLocation:Lboston/Bus/Map/data/StopLocation;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentLocation:Lboston/Bus/Map/data/StopLocation;

    iget-object v6, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentRoute:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v0, v6}, Lboston/Bus/Map/data/StopLocation;->clearPredictions(Lboston/Bus/Map/data/RouteConfig;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    const-string v0, "prediction"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentLocation:Lboston/Bus/Map/data/StopLocation;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentRoute:Lboston/Bus/Map/data/RouteConfig;

    if-eqz v0, :cond_38

    const-string v0, "minutes"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "epochTime"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "vehicle"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "dirTag"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentLocation:Lboston/Bus/Map/data/StopLocation;

    iget-object v6, p0, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->currentRoute:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual/range {v0 .. v6}, Lboston/Bus/Map/data/StopLocation;->addPrediction(IJILjava/lang/String;Lboston/Bus/Map/data/RouteConfig;)V

    goto :goto_38
.end method
