.class public final Lcom/bbm/util/c/c;
.super Ljava/lang/Object;
.source "InlineImageUtil.java"
.field private static b:Lcom/bbm/util/c/c;
.field private static final i:Ljava/lang/String;
.field public final a:Ljava/util/List;
.field private final c:Landroid/content/Context;
.field private final d:Lcom/bbm/util/c/a;
.field private final e:Ljava/util/Map;
.field private final f:Ljava/util/concurrent/ConcurrentMap;
.field private final g:[Ljava/lang/String;
.field private final h:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/bbm/util/c/c;->b:Lcom/bbm/util/c/c;
const-class v0, Lcom/bbm/util/c/c;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/bbm/util/c/c;->i:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/util/c/c;->e:Ljava/util/Map;
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, ":"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, ","
aput-object v2, v0, v1
iput-object v0, p0, Lcom/bbm/util/c/c;->g:[Ljava/lang/String;
iput-object p1, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
new-instance v0, Lcom/google/b/c/q;
invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V
invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/c/c;->f:Ljava/util/concurrent/ConcurrentMap;
new-instance v0, Lcom/bbm/util/c/a;
invoke-direct {v0}, Lcom/bbm/util/c/a;-><init>()V
invoke-direct {p0, v0}, Lcom/bbm/util/c/c;->c(Lcom/bbm/util/c/a;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/bbm/util/c/c;->a:Ljava/util/List;
invoke-direct {p0, v0}, Lcom/bbm/util/c/c;->b(Lcom/bbm/util/c/a;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/bbm/util/c/c;->h:Ljava/util/List;
invoke-direct {p0, v0}, Lcom/bbm/util/c/c;->a(Lcom/bbm/util/c/a;)V
iput-object v0, p0, Lcom/bbm/util/c/c;->d:Lcom/bbm/util/c/a;
return-void
.end method
.method private a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 5
iget-object v0, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-object v1
.end method
.method private a(ILjava/util/List;F)Landroid/graphics/drawable/BitmapDrawable;
.registers 8
const/4 v0, 0x0
cmpg-float v0, p3, v0
if-gez v0, :cond_13
invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/c/e;
iget-object v0, v0, Lcom/bbm/util/c/e;->b:Ljava/lang/String;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/bbm/util/c/c;->a(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/c/e;
iget-object v0, v0, Lcom/bbm/util/c/e;->b:Ljava/lang/String;
new-instance v1, Landroid/graphics/Point;
float-to-int v2, p3
mul-int/lit8 v2, v2, 0x2
float-to-int v3, p3
invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V
invoke-direct {p0, v0, v1}, Lcom/bbm/util/c/c;->a(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_12
.end method
.method private a(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/drawable/BitmapDrawable;
.registers 7
if-nez p2, :cond_13
:try_start_2
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
iget-object v1, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/4 v2, 0x0
invoke-direct {p0, p1, v2}, Lcom/bbm/util/c/c;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
:goto_12
return-object v0
:cond_13
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v0, 0x1
iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-direct {p0, p1, v1}, Lcom/bbm/util/c/c;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
new-instance v0, Landroid/graphics/Point;
iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V
invoke-static {v0, p2}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Point;Landroid/graphics/Point;)I
move-result v0
iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v0, 0x0
iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v0, 0x1
iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
const/4 v0, 0x1
iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
const/4 v0, 0x0
iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z
const/4 v0, 0x1
iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
iget-object v2, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {p0, p1, v1}, Lcom/bbm/util/c/c;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
:try_end_4b
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_4b} :catch_4c
goto :goto_12
:catch_4c
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
iget-object v1, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V
goto :goto_12
.end method
.method public static a(Landroid/content/Context;)Lcom/bbm/util/c/c;
.registers 3
sget-object v0, Lcom/bbm/util/c/c;->b:Lcom/bbm/util/c/c;
if-nez v0, :cond_f
new-instance v0, Lcom/bbm/util/c/c;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/util/c/c;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/bbm/util/c/c;->b:Lcom/bbm/util/c/c;
:cond_f
sget-object v0, Lcom/bbm/util/c/c;->b:Lcom/bbm/util/c/c;
return-object v0
.end method
.method private a(Lcom/bbm/util/c/a;)V
.registers 10
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
const v2, 0x7f060006
invoke-static {v0, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
move v2, v1
:goto_10
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v2, v0, :cond_68
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v4, "texts"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
move v0, v1
:goto_21
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v5
if-ge v0, v5, :cond_38
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/bbm/util/c/b;
sget-object v7, Lcom/bbm/util/c/g;->c:Lcom/bbm/util/c/g;
invoke-direct {v6, v2, v7}, Lcom/bbm/util/c/b;-><init>(ILcom/bbm/util/c/g;)V
invoke-virtual {p1, v5, v6}, Lcom/bbm/util/c/a;->a(Ljava/lang/String;Lcom/bbm/util/c/b;)V
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_38
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v0
if-nez v0, :cond_60
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/bbm/util/c/c;->i:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "\'texts\' at index %d has 0 length"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v0, v4}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_60
:try_end_60
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_64
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_10
:catch_64
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:cond_68
return-void
.end method
.method private a(Lorg/json/JSONArray;)V
.registers 15
const/4 v1, 0x0
move v0, v1
:goto_2
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v0, v2, :cond_78
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/bbm/util/c/c;->g:[Ljava/lang/String;
array-length v7, v6
move v4, v1
:goto_14
if-ge v4, v7, :cond_75
aget-object v8, v6, v4
invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_58
iget-object v9, p0, Lcom/bbm/util/c/c;->e:Ljava/util/Map;
const-string v3, ""
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
move v12, v2
move-object v2, v3
move v3, v12
:goto_2b
if-ltz v3, :cond_55
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v10
invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v11
if-ne v10, v11, :cond_5c
invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v10
if-nez v10, :cond_5c
invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
:cond_55
invoke-interface {v9, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_58
add-int/lit8 v2, v4, 0x1
move v4, v2
goto :goto_14
:cond_5c
invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v10
if-nez v10, :cond_72
invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
:cond_72
add-int/lit8 v3, v3, -0x1
goto :goto_2b
:cond_75
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_78
return-void
.end method
.method public static a(Ljava/lang/String;)Z
.registers 2
const-string v0, "[:,]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v0
return v0
.end method
.method private b(Lcom/bbm/util/c/a;)Ljava/util/List;
.registers 12
const/4 v1, 0x0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
:try_start_6
iget-object v0, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
const v2, 0x7f060007
invoke-static {v0, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
new-instance v4, Lorg/json/JSONArray;
invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
move v2, v1
:goto_15
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v2, v0, :cond_9d
invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
const-string v0, "texts"
invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
move v0, v1
:goto_26
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v7
if-ge v0, v7, :cond_3d
invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v7
new-instance v8, Lcom/bbm/util/c/b;
sget-object v9, Lcom/bbm/util/c/g;->b:Lcom/bbm/util/c/g;
invoke-direct {v8, v2, v9}, Lcom/bbm/util/c/b;-><init>(ILcom/bbm/util/c/g;)V
invoke-virtual {p1, v7, v8}, Lcom/bbm/util/c/a;->a(Ljava/lang/String;Lcom/bbm/util/c/b;)V
add-int/lit8 v0, v0, 0x1
goto :goto_26
:cond_3d
new-instance v0, Lcom/bbm/util/c/e;
const-string v7, "name"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "flag/"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v9, "screenshot"
invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v8, ".png"
invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
const/4 v8, 0x0
invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v8
const/4 v9, 0x0
invoke-direct {v0, v7, v5, v8, v9}, Lcom/bbm/util/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v0
if-nez v0, :cond_94
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v5, Lcom/bbm/util/c/c;->i:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "\'texts\' at index %d has 0 length"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v0, v5}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_94
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_94} :catch_99
:cond_94
add-int/lit8 v0, v2, 0x1
move v2, v0
goto/16 :goto_15
:catch_99
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:cond_9d
return-object v3
.end method
.method private c(Lcom/bbm/util/c/a;)Ljava/util/List;
.registers 18
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
:try_start_5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
const v2, 0x7f060005
invoke-static {v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v1
new-instance v9, Lorg/json/JSONArray;
invoke-direct {v9, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
move v7, v1
:goto_17
invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v7, v1, :cond_ee
invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v10
const-string v1, "order"
invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
const-string v1, "texts"
invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
const-string v5, ""
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
move v6, v1
move-object v1, v2
:goto_3c
if-ltz v6, :cond_82
invoke-virtual {v11, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v3
new-instance v2, Lcom/bbm/util/c/b;
sget-object v12, Lcom/bbm/util/c/g;->a:Lcom/bbm/util/c/g;
invoke-direct {v2, v7, v12}, Lcom/bbm/util/c/b;-><init>(ILcom/bbm/util/c/g;)V
move-object/from16 v0, p1
invoke-virtual {v0, v3, v2}, Lcom/bbm/util/c/a;->a(Ljava/lang/String;Lcom/bbm/util/c/b;)V
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-nez v2, :cond_7c
move-object/from16 v0, p0
iget-object v12, v0, Lcom/bbm/util/c/c;->g:[Ljava/lang/String;
array-length v13, v12
const/4 v2, 0x0
move v15, v2
move-object v2, v5
move v5, v15
:goto_5d
if-ge v5, v13, :cond_7d
aget-object v14, v12, v5
invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v14
if-nez v14, :cond_76
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v14
if-nez v14, :cond_73
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
move-object v2, v3
:cond_73
:goto_73
add-int/lit8 v5, v5, 0x1
goto :goto_5d
:cond_76
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
goto :goto_73
:cond_7c
move-object v2, v5
:cond_7d
add-int/lit8 v3, v6, -0x1
move v6, v3
move-object v5, v2
goto :goto_3c
:cond_82
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "emoticon/emoticon_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v3, "%03d"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v12, 0x0
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v6, v12
invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".png"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v1, Lcom/bbm/util/c/e;
const-string v2, "name"
invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v6, 0x0
invoke-direct/range {v1 .. v6}, Lcom/bbm/util/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;B)V
invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
invoke-direct {v0, v11}, Lcom/bbm/util/c/c;->a(Lorg/json/JSONArray;)V
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v1
if-nez v1, :cond_e5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/bbm/util/c/c;->i:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'texts\' at index %d has 0 length"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_e5
:try_end_e5
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e5} :catch_ea
add-int/lit8 v1, v7, 0x1
move v7, v1
goto/16 :goto_17
:catch_ea
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:cond_ee
return-object v8
.end method
.method public final a(IFLcom/bbm/util/c/g;)Landroid/graphics/drawable/Drawable;
.registers 14
const/4 v9, 0x0
const/4 v8, 0x1
new-instance v1, Lcom/bbm/util/c/f;
invoke-direct {v1, p3, p1, p2}, Lcom/bbm/util/c/f;-><init>(Lcom/bbm/util/c/g;IF)V
iget-object v0, p0, Lcom/bbm/util/c/c;->f:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_12
:goto_11
return-object v0
:cond_12
const/4 v0, 0x0
sget-object v2, Lcom/bbm/util/c/d;->a:[I
invoke-virtual {p3}, Lcom/bbm/util/c/g;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_ac
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/bbm/util/c/c;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " No Drawable for InlineImageType "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p3}, Lcom/bbm/util/c/g;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v9, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_40
iget-object v2, p0, Lcom/bbm/util/c/c;->f:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_11
:pswitch_46
iget-object v0, p0, Lcom/bbm/util/c/c;->a:Ljava/util/List;
invoke-direct {p0, p1, v0, p2}, Lcom/bbm/util/c/c;->a(ILjava/util/List;F)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_40
:pswitch_4d
iget-object v0, p0, Lcom/bbm/util/c/c;->h:Ljava/util/List;
invoke-direct {p0, p1, v0, p2}, Lcom/bbm/util/c/c;->a(ILjava/util/List;F)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_40
:pswitch_54
iget-object v0, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f070002
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
move-result-object v2
const/4 v0, -0x1
invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v3
new-instance v0, Landroid/graphics/Point;
float-to-int v4, p2
mul-int/lit8 v4, v4, 0x2
float-to-int v5, p2
invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V
new-instance v4, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
iget-object v5, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-static {v5, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
new-instance v5, Landroid/graphics/Point;
iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V
invoke-static {v5, v0}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Point;Landroid/graphics/Point;)I
move-result v0
iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z
iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
iget-object v5, p0, Lcom/bbm/util/c/c;->c:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-static {v5, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v3
invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
goto :goto_40
nop
:pswitch_data_ac
.packed-switch 0x1
:pswitch_46
:pswitch_4d
:pswitch_54
.end packed-switch
.end method
.method public final a(Ljava/lang/CharSequence;F)Landroid/text/Spannable;
.registers 4
invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/bbm/util/c/c;->a(Ljava/lang/CharSequence;FLandroid/text/Spannable;)Landroid/text/Spannable;
return-object v0
.end method
.method public final a(Ljava/lang/CharSequence;FLandroid/text/Spannable;)Landroid/text/Spannable;
.registers 10
const v0, 0x3fb33333
mul-float v2, p2, v0
iget-object v0, p0, Lcom/bbm/util/c/c;->d:Lcom/bbm/util/c/a;
iget-object v1, v0, Lcom/bbm/util/c/a;->a:Lcom/bbm/util/c/h;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_2d
const/4 v0, 0x0
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v4
:goto_15
if-ge v0, v4, :cond_2d
invoke-virtual {v1, p1, v0, v4}, Lcom/bbm/util/c/h;->a(Ljava/lang/CharSequence;II)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v5
if-eqz v5, :cond_2d
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/c/i;
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget v0, v0, Lcom/bbm/util/c/i;->b:I
goto :goto_15
:cond_2d
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_31
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/c/i;
iget-object v1, v0, Lcom/bbm/util/c/i;->c:Ljava/lang/Object;
check-cast v1, Lcom/bbm/util/c/b;
iget v4, v1, Lcom/bbm/util/c/b;->a:I
iget-object v1, v0, Lcom/bbm/util/c/i;->c:Ljava/lang/Object;
check-cast v1, Lcom/bbm/util/c/b;
iget-object v1, v1, Lcom/bbm/util/c/b;->b:Lcom/bbm/util/c/g;
invoke-virtual {p0, v4, v2, v1}, Lcom/bbm/util/c/c;->a(IFLcom/bbm/util/c/g;)Landroid/graphics/drawable/Drawable;
move-result-object v1
new-instance v4, Lcom/bbm/ui/ea;
invoke-direct {v4, v1, v2}, Lcom/bbm/ui/ea;-><init>(Landroid/graphics/drawable/Drawable;F)V
iget v1, v0, Lcom/bbm/util/c/i;->a:I
iget v0, v0, Lcom/bbm/util/c/i;->b:I
const/16 v5, 0x21
invoke-interface {p3, v4, v1, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
goto :goto_31
:cond_5c
return-object p3
.end method
.method public final b(Ljava/lang/String;)Ljava/lang/String;
.registers 6
iget-object v0, p0, Lcom/bbm/util/c/c;->e:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_a
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_a
const-string v1, ""
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_a
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object p1
goto :goto_a
:cond_47
return-object p1
.end method