.class public Lcom/mixpanel/android/mpmetrics/SurveyState;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field static final synthetic a:Z
.field private static final h:Ljava/lang/Object;
.field private static i:J
.field private static j:Lcom/mixpanel/android/mpmetrics/SurveyState;
.field private static k:I
.field private static l:J
.field private static m:I
.field private final b:Lcom/mixpanel/android/mpmetrics/Survey;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
.field private final f:Landroid/graphics/Bitmap;
.field private final g:I
.method static constructor <clinit>()V
.registers 4
const-wide/16 v2, -0x1
const/4 v1, 0x0
const-class v0, Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_29
const/4 v0, 0x1
:goto_c
sput-boolean v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->a:Z
new-instance v0, Lcom/mixpanel/android/mpmetrics/SurveyState$1;
invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState$1;-><init>()V
sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->CREATOR:Landroid/os/Parcelable$Creator;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Ljava/lang/Object;
sput-wide v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->i:J
const/4 v0, 0x0
sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:Lcom/mixpanel/android/mpmetrics/SurveyState;
sput v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I
sput-wide v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->l:J
const/4 v0, -0x1
sput v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
return-void
:cond_29
move v0, v1
goto :goto_c
.end method
.method private constructor <init>(Landroid/os/Bundle;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.DISTINCT_ID_BUNDLE_KEY"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->c:Ljava/lang/String;
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.TOKEN_BUNDLE_KEY"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->d:Ljava/lang/String;
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.HIGHLIGHT_COLOR_BUNDLE_KEY"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->g:I
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.ANSWERS_BUNDLE_KEY"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.BACKGROUND_COMPRESSED_BUNDLE_KEY"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
if-eqz v0, :cond_48
const/4 v1, 0x0
array-length v2, v0
invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:Landroid/graphics/Bitmap;
:goto_35
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.SURVEY_BUNDLE_KEY"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:try_start_3b
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/mixpanel/android/mpmetrics/Survey;
invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/Survey;-><init>(Lorg/json/JSONObject;)V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->b:Lcom/mixpanel/android/mpmetrics/Survey;
:try_end_47
.catch Lorg/json/JSONException; {:try_start_3b .. :try_end_47} :catch_4c
.catch Lcom/mixpanel/android/mpmetrics/Survey$BadSurveyException; {:try_start_3b .. :try_end_47} :catch_55
return-void
:cond_48
const/4 v0, 0x0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:Landroid/graphics/Bitmap;
goto :goto_35
:catch_4c
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Survey serialization resulted in a corrupted parcel"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:catch_55
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Survey serialization resulted in a corrupted parcel"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method synthetic constructor <init>(Landroid/os/Bundle;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/SurveyState;-><init>(Landroid/os/Bundle;)V
return-void
.end method
.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/Survey;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->b:Lcom/mixpanel/android/mpmetrics/Survey;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->c:Ljava/lang/String;
iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->d:Ljava/lang/String;
new-instance v0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;-><init>()V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
iput-object p4, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:Landroid/graphics/Bitmap;
iput p5, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->g:I
return-void
.end method
.method public static a(Lcom/mixpanel/android/mpmetrics/SurveyState;I)Lcom/mixpanel/android/mpmetrics/SurveyState;
.registers 8
const/4 v0, 0x0
sget-boolean v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->a:Z
if-nez v1, :cond_d
if-eqz p0, :cond_d
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
sget-wide v3, Lcom/mixpanel/android/mpmetrics/SurveyState;->l:J
sub-long/2addr v1, v3
sget-object v3, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Ljava/lang/Object;
monitor-enter v3
:try_start_17
sget v4, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
if-lez v4, :cond_2c
const-wide/32 v4, 0x2932e00
cmp-long v1, v1, v4
if-lez v1, :cond_2c
const-string v1, "MixpanelAPI SurveyState"
const-string v2, "Survey activity claimed but never released lock, possible force quit."
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v1, -0x1
sput v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
:cond_2c
sget v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
if-lez v1, :cond_37
sget v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
if-eq v1, p1, :cond_37
monitor-exit v3
move-object p0, v0
:goto_36
return-object p0
:cond_37
if-eqz p0, :cond_42
sput p1, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
sput-object p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:Lcom/mixpanel/android/mpmetrics/SurveyState;
monitor-exit v3
:try_end_3e
.catchall {:try_start_17 .. :try_end_3e} :catchall_3f
goto :goto_36
:catchall_3f
move-exception v0
monitor-exit v3
throw v0
:cond_42
:try_start_42
sget-object v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:Lcom/mixpanel/android/mpmetrics/SurveyState;
if-nez v1, :cond_49
monitor-exit v3
move-object p0, v0
goto :goto_36
:cond_49
sput p1, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
sget-object p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:Lcom/mixpanel/android/mpmetrics/SurveyState;
monitor-exit v3
:try_end_4e
.catchall {:try_start_42 .. :try_end_4e} :catchall_3f
goto :goto_36
.end method
.method public static a(I)V
.registers 3
sget-object v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
if-ne p0, v0, :cond_d
const/4 v0, -0x1
sput v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
const/4 v0, 0x0
sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:Lcom/mixpanel/android/mpmetrics/SurveyState;
:cond_d
monitor-exit v1
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_f
return-void
:catchall_f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
.registers 13
invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/i;->a(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->i:J
sub-long/2addr v0, v2
sget-object v6, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Ljava/lang/Object;
monitor-enter v6
:try_start_15
sget v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->m:I
if-lez v2, :cond_2a
const-wide/32 v2, 0x2932e00
cmp-long v0, v0, v2
if-lez v0, :cond_2a
const-string v0, "MixpanelAPI SurveyState"
const-string v1, "SurveyState set long, long ago, without showing."
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:Lcom/mixpanel/android/mpmetrics/SurveyState;
:cond_2a
sget-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:Lcom/mixpanel/android/mpmetrics/SurveyState;
if-nez v0, :cond_5f
new-instance v0, Lcom/mixpanel/android/mpmetrics/SurveyState;
move-object v1, p0
move-object v2, p2
move-object v3, p3
move-object v4, p4
move v5, p5
invoke-direct/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/SurveyState;-><init>(Lcom/mixpanel/android/mpmetrics/Survey;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:Lcom/mixpanel/android/mpmetrics/SurveyState;
new-instance v0, Landroid/content/Intent;
invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/mixpanel/android/surveys/SurveyActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const/high16 v1, 0x2
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
sget v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I
add-int/lit8 v1, v1, 0x1
sput v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I
const-string v1, "intentID"
sget v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:cond_5f
monitor-exit v6
:try_end_60
.catchall {:try_start_15 .. :try_end_60} :catchall_61
goto :goto_a
:catchall_61
move-exception v0
monitor-exit v6
throw v0
.end method
.method public final a()Lcom/mixpanel/android/mpmetrics/Survey;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->b:Lcom/mixpanel/android/mpmetrics/Survey;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->c:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->d:Ljava/lang/String;
return-object v0
.end method
.method public final d()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 8
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.DISTINCT_ID_BUNDLE_KEY"
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->c:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.TOKEN_BUNDLE_KEY"
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->d:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.HIGHLIGHT_COLOR_BUNDLE_KEY"
iget v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->g:I
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.ANSWERS_BUNDLE_KEY"
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const/4 v0, 0x0
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:Landroid/graphics/Bitmap;
if-eqz v2, :cond_38
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:Landroid/graphics/Bitmap;
sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x14
invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
:cond_38
const-string v2, "com.mixpanel.android.mpmetrics.SurveyState.BACKGROUND_COMPRESSED_BUNDLE_KEY"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->b:Lcom/mixpanel/android/mpmetrics/Survey;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->a()Ljava/lang/String;
move-result-object v0
const-string v2, "com.mixpanel.android.mpmetrics.SurveyState.SURVEY_BUNDLE_KEY"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
return-void
.end method