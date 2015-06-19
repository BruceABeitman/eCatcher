.class  Lcom/millennialmedia/android/VideoImage;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field static final a:J = 0xb37c805a5f2be9dL
.field private static final w:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:J
.field  d:[Ljava/lang/String;
.field  e:Ljava/lang/String;
.field  f:Ljava/lang/String;
.field  g:I
.field  h:I
.field  i:I
.field  j:I
.field  k:I
.field  l:I
.field  m:I
.field  n:I
.field  o:J
.field  p:J
.field  q:F
.field  r:F
.field  s:J
.field  t:Z
.field  u:Landroid/widget/ImageButton;
.field  v:Landroid/widget/RelativeLayout$LayoutParams;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/millennialmedia/android/VideoImage;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/VideoImage;->w:Ljava/lang/String;
new-instance v0, Lcom/millennialmedia/android/VideoImage$1;
invoke-direct {v0}, Lcom/millennialmedia/android/VideoImage$1;-><init>()V
sput-object v0, Lcom/millennialmedia/android/VideoImage;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/high16 v1, 0x3f80
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->g:I
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->h:I
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->i:I
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->j:I
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->q:F
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->r:F
const-wide/16 v0, 0x3e8
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->s:J
return-void
.end method
.method constructor <init>(Landroid/os/Parcel;)V
.registers 6
const/4 v0, 0x1
const/high16 v2, 0x3f80
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->g:I
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->h:I
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->i:I
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->j:I
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->q:F
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->r:F
const-wide/16 v2, 0x3e8
iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->s:J
:try_start_17
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->c:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
new-array v2, v2, [Ljava/lang/String;
iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
iget-object v2, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->e:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->f:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->g:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->h:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->i:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->j:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->k:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->l:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->m:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->n:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->o:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->p:J
invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F
move-result v2
iput v2, p0, Lcom/millennialmedia/android/VideoImage;->r:F
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->s:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
if-ne v2, v0, :cond_93
:goto_90
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->t:Z
:try_end_92
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_92} :catch_95
:goto_92
return-void
:cond_93
move v0, v1
goto :goto_90
:catch_95
move-exception v0
sget-object v1, Lcom/millennialmedia/android/VideoImage;->w:Ljava/lang/String;
const-string v2, "VideoImage parcel creation exception: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_92
.end method
.method constructor <init>(Lorg/json/JSONObject;)V
.registers 4
const/high16 v1, 0x3f80
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->g:I
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->h:I
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->i:I
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->j:I
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->q:F
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->r:F
const-wide/16 v0, 0x3e8
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->s:J
invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoImage;->a(Lorg/json/JSONObject;)V
return-void
.end method
.method private a(Lorg/json/JSONObject;)V
.registers 13
const/4 v0, 0x0
const-wide/16 v9, 0x0
const/4 v8, 0x0
const-wide v6, 0x408f400000000000L
const-wide/high16 v4, 0x3ff0
if-nez p1, :cond_e
:goto_d
return-void
:cond_e
const-string v1, "image"
invoke-virtual {p1, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
const-string v1, "contentLength"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v1
iput-wide v1, p0, Lcom/millennialmedia/android/VideoImage;->c:J
const-string v1, "activity"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
if-eqz v1, :cond_3f
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v2, v2, [Ljava/lang/String;
iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
:goto_2e
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v0, v2, :cond_43
iget-object v2, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2e
:cond_3f
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
:cond_43
const-string v0, "url"
invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->e:Ljava/lang/String;
const-string v0, "overlayOrientation"
invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->f:Ljava/lang/String;
const-string v0, "android-layout"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->k:I
const-string v0, "android-layoutAnchor"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->l:I
const-string v0, "android-layout2"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->m:I
const-string v0, "android-layoutAnchor2"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->n:I
const-string v0, "android-paddingTop"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->g:I
const-string v0, "android-paddingLeft"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->i:I
const-string v0, "android-paddingRight"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->j:I
const-string v0, "android-paddingBottom"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->h:I
const-string v0, "appearanceDelay"
invoke-virtual {p1, v0, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
mul-double/2addr v0, v6
double-to-long v0, v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->o:J
const-string v0, "inactivityTimeout"
invoke-virtual {p1, v0, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
mul-double/2addr v0, v6
double-to-long v0, v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->p:J
const-string v0, "opacity"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_cb
const-string v1, "start"
invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v1
double-to-float v1, v1
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->q:F
const-string v1, "end"
invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v1
double-to-float v1, v1
iput v1, p0, Lcom/millennialmedia/android/VideoImage;->r:F
const-string v1, "fadeDuration"
invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
mul-double/2addr v0, v6
double-to-long v0, v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->s:J
:cond_cb
const-string v0, "is_leavebehind"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->t:Z
goto/16 :goto_d
.end method
.method  a()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_1f
invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1f
invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v0
const-string v1, "\\.[^\\.]*$"
const-string v2, ".dat"
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_1e
return-object v0
:cond_1f
const/4 v0, 0x0
goto :goto_1e
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 6
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->c:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v2
new-array v0, v2, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
const/4 v0, 0x0
move v1, v0
:goto_18
if-ge v1, v2, :cond_28
iget-object v3, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v3, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_18
:cond_28
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->e:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->f:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->g:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->h:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->i:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->j:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->k:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->l:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->m:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->n:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->o:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->p:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F
move-result v0
iput v0, p0, Lcom/millennialmedia/android/VideoImage;->r:F
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->s:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->t:Z
return-void
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 6
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->c:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
array-length v0, v0
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
array-length v2, v1
const/4 v0, 0x0
:goto_14
if-ge v0, v2, :cond_1e
aget-object v3, v1, v0
invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_1e
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->e:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->f:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->g:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->h:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->i:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->j:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->k:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->l:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->m:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->n:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->o:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->p:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->r:F
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->s:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->t:Z
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->c:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->e:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->f:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->g:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->h:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->i:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->j:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->k:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->l:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->m:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->n:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->o:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->p:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V
iget v0, p0, Lcom/millennialmedia/android/VideoImage;->r:F
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->s:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->t:Z
if-eqz v0, :cond_69
const/4 v0, 0x1
:goto_65
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_69
const/4 v0, 0x0
goto :goto_65
.end method