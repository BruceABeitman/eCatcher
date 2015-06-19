.class public Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleMediaTypeBox.java"
.field public static final TYPE:Ljava/lang/String; = "stik"
.field private static mediaTypes:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
const-string v1, "0"
const-string v2, "Movie (is now 9)"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
const-string v1, "1"
const-string v2, "Normal (Music)"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
const-string v1, "2"
const-string v2, "Audiobook"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
const-string v1, "6"
const-string v2, "Music Video"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
const-string v1, "9"
const-string v2, "Movie"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
const-string v1, "10"
const-string v2, "TV Show"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
const-string v1, "11"
const-string v2, "Booklet"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
const-string v1, "14"
const-string v2, "Ringtone"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-string v0, "stik"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
return-void
.end method
.method public getReadableValue()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->getValue()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->mediaTypes:Ljava/util/Map;
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->getValue()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_18
return-object v0
:cond_19
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "unknown media type "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AppleMediaTypeBox;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_18
.end method