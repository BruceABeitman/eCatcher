.class public final enum Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.super Ljava/lang/Enum;
.source "ImageDownloader.java"
.field public static final enum ASSETS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.field public static final enum CONTENT:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.field public static final enum DRAWABLE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.field public static final enum FILE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.field public static final enum HTTP:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.field public static final enum HTTPS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.field public static final enum UNKNOWN:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.field private scheme:Ljava/lang/String;
.field private uriPrefix:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
const-string/jumbo v1, "HTTP"
const-string/jumbo v2, "http"
invoke-direct {v0, v1, v4, v2}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->HTTP:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
new-instance v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
const-string/jumbo v1, "HTTPS"
const-string/jumbo v2, "https"
invoke-direct {v0, v1, v5, v2}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->HTTPS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
new-instance v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
const-string/jumbo v1, "FILE"
const-string/jumbo v2, "file"
invoke-direct {v0, v1, v6, v2}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->FILE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
new-instance v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
const-string/jumbo v1, "CONTENT"
const-string/jumbo v2, "content"
invoke-direct {v0, v1, v7, v2}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->CONTENT:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
new-instance v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
const-string/jumbo v1, "ASSETS"
const-string/jumbo v2, "assets"
invoke-direct {v0, v1, v8, v2}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ASSETS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
new-instance v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
const-string/jumbo v1, "DRAWABLE"
const/4 v2, 0x5
const-string/jumbo v3, "drawable"
invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
new-instance v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
const-string/jumbo v1, "UNKNOWN"
const/4 v2, 0x6
const-string/jumbo v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
const/4 v0, 0x7
new-array v0, v0, [Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->HTTP:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
aput-object v1, v0, v4
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->HTTPS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
aput-object v1, v0, v5
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->FILE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
aput-object v1, v0, v6
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->CONTENT:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
aput-object v1, v0, v7
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ASSETS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ENUM$VALUES:[Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->scheme:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;
return-void
.end method
.method private belongsTo(Ljava/lang/String;)Z
.registers 4
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static ofUri(Ljava/lang/String;)Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.registers 6
if-eqz p0, :cond_a
invoke-static {}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->values()[Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
move-result-object v2
array-length v3, v2
const/4 v1, 0x0
:goto_8
if-lt v1, v3, :cond_d
:cond_a
sget-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
:cond_c
return-object v0
:cond_d
aget-object v0, v2, v1
invoke-direct {v0, p0}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->belongsTo(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_c
add-int/lit8 v1, v1, 0x1
goto :goto_8
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.registers 2
const-class v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
return-object v0
.end method
.method public static values()[Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ENUM$VALUES:[Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method
.method public crop(Ljava/lang/String;)Ljava/lang/String;
.registers 7
invoke-direct {p0, p1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->belongsTo(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "URI [%1$s] doesn\'t have expected scheme [%2$s]"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->scheme:Ljava/lang/String;
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
iget-object v0, p0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public wrap(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method