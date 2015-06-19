.class  Lcom/millennialmedia/android/HttpMMHeaders;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field static final a:J = 0xb41d817d0ea16L
.field private static final h:Ljava/lang/String; = "X-MM-TRANSPARENT"
.field private static final i:Ljava/lang/String; = "X-MM-TRANSITION"
.field private static final j:Ljava/lang/String; = "X-MM-TRANSITION-DURATION"
.field private static final k:Ljava/lang/String; = "X-MM-USE-CUSTOM-CLOSE"
.field private static final l:Ljava/lang/String; = "X-MM-ENABLE-HARDWARE-ACCELERATION"
.field private static final m:Ljava/lang/String; = "X-MM-ACID"
.field private static final n:Ljava/lang/String;
.field  b:Z
.field  c:J
.field  d:Ljava/lang/String;
.field  e:Z
.field  f:Z
.field  g:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/millennialmedia/android/HttpMMHeaders;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/HttpMMHeaders;->n:Ljava/lang/String;
new-instance v0, Lcom/millennialmedia/android/HttpMMHeaders$1;
invoke-direct {v0}, Lcom/millennialmedia/android/HttpMMHeaders$1;-><init>()V
sput-object v0, Lcom/millennialmedia/android/HttpMMHeaders;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
:try_start_4
new-array v0, v0, [Z
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V
const/4 v1, 0x0
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->b:Z
const/4 v1, 0x1
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->e:Z
const/4 v1, 0x2
aget-boolean v0, v0, v1
iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->f:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->d:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->g:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->c:J
:goto_2a
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_2b
return-void
:catch_2b
move-exception v0
sget-object v1, Lcom/millennialmedia/android/HttpMMHeaders;->n:Ljava/lang/String;
const-string v2, "Header serializing failed"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2a
.end method
.method public constructor <init>([Lorg/apache/http/Header;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
array-length v1, p1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_1e
aget-object v2, p1, v0
invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->a(Lorg/apache/http/Header;)V
invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->b(Lorg/apache/http/Header;)V
invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->c(Lorg/apache/http/Header;)V
invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->d(Lorg/apache/http/Header;)V
invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->e(Lorg/apache/http/Header;)V
invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->f(Lorg/apache/http/Header;)V
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1e
return-void
.end method
.method private a(Lorg/apache/http/Header;)V
.registers 4
const-string v0, "X-MM-TRANSPARENT"
invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_18
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->b:Z
:cond_18
return-void
.end method
.method private b(Lorg/apache/http/Header;)V
.registers 4
const-string v0, "X-MM-TRANSITION"
invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->d:Ljava/lang/String;
:cond_12
return-void
.end method
.method private c(Lorg/apache/http/Header;)V
.registers 4
const-string v0, "X-MM-TRANSITION-DURATION"
invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1c
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v0
const/high16 v1, 0x447a
mul-float/2addr v0, v1
float-to-long v0, v0
iput-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->c:J
:cond_1c
return-void
.end method
.method private d(Lorg/apache/http/Header;)V
.registers 4
const-string v0, "X-MM-USE-CUSTOM-CLOSE"
invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->e:Z
:cond_16
return-void
.end method
.method private e(Lorg/apache/http/Header;)V
.registers 4
const-string v0, "X-MM-ENABLE-HARDWARE-ACCELERATION"
invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->f:Z
:cond_16
return-void
.end method
.method private f(Lorg/apache/http/Header;)V
.registers 4
const-string v0, "X-MM-ACID"
invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->g:Ljava/lang/String;
:cond_12
return-void
.end method
.method  a(Ljava/util/Map;)V
.registers 5
const-string v0, "transparent"
iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->b:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "transition"
iget-object v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->d:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "acid"
iget-object v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->g:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "transitionDuration"
iget-wide v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->c:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "useCustomClose"
iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->e:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enableHardwareAccel"
iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->f:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
const/4 v0, 0x3
new-array v0, v0, [Z
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->b:Z
aput-boolean v2, v0, v1
const/4 v1, 0x1
iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->e:Z
aput-boolean v2, v0, v1
const/4 v1, 0x2
iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->f:Z
aput-boolean v2, v0, v1
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V
iget-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->c:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
.end method