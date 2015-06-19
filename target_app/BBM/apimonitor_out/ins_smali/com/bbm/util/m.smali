.class public final Lcom/bbm/util/m;
.super Ljava/lang/Object;
.source "AvatarCloudImageData.java"
.field public final a:Ljava/lang/String;
.field private final b:I
.field private c:Lcom/bbm/util/cr;
.method private constructor <init>(Lorg/json/JSONObject;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "height"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/bbm/util/m;->b:I
const-string v0, "url"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/m;->a:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/util/List;I)Lcom/bbm/util/m;
.registers 10
const/4 v3, 0x0
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
new-array v5, v0, [I
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
new-array v6, v0, [I
const/4 v2, -0x1
:try_start_e
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_23
new-instance v1, Lcom/bbm/util/m;
const/4 v0, 0x0
invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lcom/bbm/util/m;-><init>(Lorg/json/JSONObject;)V
move-object v0, v1
:goto_22
return-object v0
:cond_23
move v1, v3
:goto_24
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_52
invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
const-string v4, "height"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
aput v0, v5, v1
invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
const-string v4, "height"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
aput v0, v6, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_24
:cond_52
invoke-static {v6}, Ljava/util/Arrays;->sort([I)V
array-length v0, v6
add-int/lit8 v0, v0, -0x1
aget v0, v6, v0
if-le p1, v0, :cond_6e
array-length v0, v6
add-int/lit8 v0, v0, -0x1
aget v0, v6, v0
:try_end_61
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_61} :catch_88
:cond_61
move v1, v2
move v2, v3
:try_start_63
:goto_63
array-length v4, v5
if-ge v2, v4, :cond_8d
aget v4, v5, v2
:try_end_68
.catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_9e
if-ne v0, v4, :cond_6b
move v1, v2
:cond_6b
add-int/lit8 v2, v2, 0x1
goto :goto_63
:try_start_6e
:cond_6e
array-length v0, v6
add-int/lit8 v0, v0, -0x1
aget v1, v6, v0
array-length v0, v6
add-int/lit8 v0, v0, -0x1
move v7, v0
move v0, v1
move v1, v7
:goto_79
if-ltz v1, :cond_61
aget v4, v6, v1
if-lt p1, v4, :cond_81
if-lt p1, v0, :cond_61
:cond_81
aget v4, v6, v1
:try_end_83
.catch Ljava/lang/Exception; {:try_start_6e .. :try_end_83} :catch_88
add-int/lit8 v0, v1, -0x1
move v1, v0
move v0, v4
goto :goto_79
:catch_88
move-exception v0
move v1, v2
:goto_8a
invoke-static {v0}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;)V
:cond_8d
new-instance v2, Lcom/bbm/util/m;
invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lcom/bbm/util/m;-><init>(Lorg/json/JSONObject;)V
move-object v0, v2
goto :goto_22
:catch_9e
move-exception v0
goto :goto_8a
.end method
.method public final a(Landroid/content/Context;)Lcom/bbm/j/r;
.registers 6
iget-object v0, p0, Lcom/bbm/util/m;->c:Lcom/bbm/util/cr;
if-nez v0, :cond_2c
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/d/fd;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
invoke-virtual {v2}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {v1, v2}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/util/m;->c:Lcom/bbm/util/cr;
new-instance v0, Lcom/bbm/util/ez;
iget-object v1, p0, Lcom/bbm/util/m;->c:Lcom/bbm/util/cr;
invoke-direct {v0, p1, v1}, Lcom/bbm/util/ez;-><init>(Landroid/content/Context;Lcom/bbm/util/cr;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
iget-object v3, p0, Lcom/bbm/util/m;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/bbm/util/ez;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
:cond_2c
iget-object v0, p0, Lcom/bbm/util/m;->c:Lcom/bbm/util/cr;
return-object v0
.end method
.method public final a(Lcom/bbm/util/m;)Z
.registers 4
iget v0, p0, Lcom/bbm/util/m;->b:I
iget v1, p1, Lcom/bbm/util/m;->b:I
if-ne v0, v1, :cond_12
iget-object v0, p0, Lcom/bbm/util/m;->a:Ljava/lang/String;
iget-object v1, p1, Lcom/bbm/util/m;->a:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method