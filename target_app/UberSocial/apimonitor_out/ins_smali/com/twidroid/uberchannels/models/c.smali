.class public Lcom/twidroid/uberchannels/models/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected static final a:Ljava/lang/String; = "UberChannelTheme"
.field  b:Ljava/lang/String;
.field  c:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field  e:Ljava/lang/String;
.field public f:I
.field public g:I
.field public h:I
.field public i:Z
.field public j:I
.field public k:I
.method public constructor <init>(Lorg/json/JSONObject;I)V
.registers 7
const v1, -0x333334
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/uberchannels/models/c;->f:I
const v0, -0xbbbbbc
iput v0, p0, Lcom/twidroid/uberchannels/models/c;->g:I
iput v1, p0, Lcom/twidroid/uberchannels/models/c;->h:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/uberchannels/models/c;->i:Z
const v0, -0x55000001
iput v0, p0, Lcom/twidroid/uberchannels/models/c;->j:I
iput v1, p0, Lcom/twidroid/uberchannels/models/c;->k:I
:try_start_1a
const-string v0, "avatar"
invoke-static {p2}, Lcom/twidroid/uberchannels/models/c;->a(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/twidroid/uberchannels/models/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_30
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
:cond_30
const-string v0, "logo"
invoke-static {p2}, Lcom/twidroid/uberchannels/models/c;->b(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/twidroid/uberchannels/models/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_46
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
:cond_46
const-string v0, "background_image"
invoke-static {p2}, Lcom/twidroid/uberchannels/models/c;->c(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/twidroid/uberchannels/models/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5c
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
:cond_5c
const-string v0, "version"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->e:Ljava/lang/String;
:try_end_64
.catch Lorg/json/JSONException; {:try_start_1a .. :try_end_64} :catch_126
:try_start_64
const-string v0, "text_color"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_78
const-string v0, "text_color"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/uberchannels/models/c;->f:I
:cond_78
:goto_78
:try_start_78
:try_end_78
.catch Ljava/lang/Exception; {:try_start_64 .. :try_end_78} :catch_137
.catch Lorg/json/JSONException; {:try_start_64 .. :try_end_78} :catch_126
const-string v0, "link_color"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8c
const-string v0, "link_color"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/uberchannels/models/c;->g:I
:try_end_8c
.catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8c} :catch_134
.catch Lorg/json/JSONException; {:try_start_78 .. :try_end_8c} :catch_126
:try_start_8c
:goto_8c
:cond_8c
const-string v0, "small_text_color"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a0
const-string v0, "small_text_color"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/uberchannels/models/c;->h:I
:try_end_a0
.catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a0} :catch_131
.catch Lorg/json/JSONException; {:try_start_8c .. :try_end_a0} :catch_126
:try_start_a0
:goto_a0
:cond_a0
const-string v0, "value_transparency"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v0
const v1, 0x40233333
mul-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
const-string v1, "bubble_background_color"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_e9
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "#"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "bubble_background_color"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "#"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/uberchannels/models/c;->j:I
:cond_e9
:try_end_e9
.catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_e9} :catch_12f
.catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_e9} :catch_126
:goto_e9
:try_start_e9
const-string v0, "use_bubble_layout"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f9
const-string v0, "use_bubble_layout"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/uberchannels/models/c;->i:Z
:try_end_f9
.catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f9} :catch_12d
.catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_f9} :catch_126
:cond_f9
:goto_f9
:try_start_f9
const-string v0, "bubble_stroke_color"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10d
const-string v0, "bubble_stroke_color"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/uberchannels/models/c;->k:I
:try_start_10d
:cond_10d
:goto_10d
:try_end_10d
.catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_10d} :catch_12b
.catch Lorg/json/JSONException; {:try_start_f9 .. :try_end_10d} :catch_126
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
invoke-static {v0}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
:goto_125
:try_end_125
.catch Lorg/json/JSONException; {:try_start_10d .. :try_end_125} :catch_126
return-void
:catch_126
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_125
:catch_12b
move-exception v0
goto :goto_10d
:catch_12d
move-exception v0
goto :goto_f9
:catch_12f
move-exception v0
goto :goto_e9
:catch_131
move-exception v0
goto/16 :goto_a0
:catch_134
move-exception v0
goto/16 :goto_8c
:catch_137
move-exception v0
goto/16 :goto_78
.end method
.method private static a(I)Ljava/lang/String;
.registers 2
packed-switch p0, :pswitch_data_c
const-string v0, "72x72"
:goto_5
return-object v0
:pswitch_6
const-string v0, "36x36"
goto :goto_5
:pswitch_9
const-string v0, "48x48"
goto :goto_5
:pswitch_data_c
.packed-switch 0x1
:pswitch_6
:pswitch_9
.end packed-switch
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
const/4 p0, 0x0
:cond_7
return-object p0
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
const-string v0, "%s_%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Z
.registers 4
invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private static b(I)Ljava/lang/String;
.registers 2
packed-switch p0, :pswitch_data_c
const-string v0, "480x48"
:goto_5
return-object v0
:pswitch_6
const-string v0, "240x48"
goto :goto_5
:pswitch_9
const-string v0, "320x48"
goto :goto_5
:pswitch_data_c
.packed-switch 0x1
:pswitch_6
:pswitch_9
.end packed-switch
.end method
.method private static c(I)Ljava/lang/String;
.registers 2
packed-switch p0, :pswitch_data_c
const-string v0, "480x854"
:goto_5
return-object v0
:pswitch_6
const-string v0, "240x320"
goto :goto_5
:pswitch_9
const-string v0, "320x480"
goto :goto_5
:pswitch_data_c
.packed-switch 0x1
:pswitch_6
:pswitch_9
.end packed-switch
.end method
.method public a()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
iget-object v1, p0, Lcom/twidroid/uberchannels/models/c;->e:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string v1, "_bckgr_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
if-nez v0, :cond_14
const-string v0, "background_image"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
:try_start_c
const-string v0, "background_image"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
:cond_14
:try_end_14
.catch Lorg/json/JSONException; {:try_start_c .. :try_end_14} :catch_55
:goto_14
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
if-nez v0, :cond_28
const-string v0, "avatar"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_28
:try_start_20
const-string v0, "avatar"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
:cond_28
:goto_28
:try_end_28
.catch Lorg/json/JSONException; {:try_start_20 .. :try_end_28} :catch_5a
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
if-nez v0, :cond_3c
const-string v0, "logo"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3c
:try_start_34
const-string v0, "logo"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
:try_end_3c
.catch Lorg/json/JSONException; {:try_start_34 .. :try_end_3c} :catch_5f
:goto_3c
:cond_3c
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
invoke-static {v0}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/twidroid/uberchannels/models/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
return-void
:catch_55
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_14
:catch_5a
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_28
:catch_5f
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_3c
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->c:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
iget-object v1, p0, Lcom/twidroid/uberchannels/models/c;->e:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string v1, "_logo_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
return-object v0
.end method