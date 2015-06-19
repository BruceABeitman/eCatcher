.class public final Lcom/google/android/gms/internal/io;
.super Ljava/lang/Object;
.field private static final Ht:Ljava/util/regex/Pattern;
.field private static final Hu:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 1
const-string v0, "\\\\."
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/io;->Ht:Ljava/util/regex/Pattern;
const-string v0, "[\\\\\"/\u0008\u000c\n\r\t]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/io;->Hu:Ljava/util/regex/Pattern;
return-void
.end method
.method public static aK(Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_59
sget-object v0, Lcom/google/android/gms/internal/io;->Hu:Ljava/util/regex/Pattern;
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
const/4 v0, 0x0
:goto_d
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_57
if-nez v0, :cond_1a
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
:cond_1a
invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
move-result v2
sparse-switch v2, :sswitch_data_62
goto :goto_d
:sswitch_27
const-string v2, "\\\\b"
invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
goto :goto_d
:sswitch_2d
const-string v2, "\\\\\\\""
invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
goto :goto_d
:sswitch_33
const-string v2, "\\\\\\\\"
invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
goto :goto_d
:sswitch_39
const-string v2, "\\\\/"
invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
goto :goto_d
:sswitch_3f
const-string v2, "\\\\f"
invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
goto :goto_d
:sswitch_45
const-string v2, "\\\\n"
invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
goto :goto_d
:sswitch_4b
const-string v2, "\\\\r"
invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
goto :goto_d
:sswitch_51
const-string v2, "\\\\t"
invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
goto :goto_d
:cond_57
if-nez v0, :cond_5a
:cond_59
:goto_59
return-object p0
:cond_5a
invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_59
:sswitch_data_62
.sparse-switch
0x8 -> :sswitch_27
0x9 -> :sswitch_51
0xa -> :sswitch_45
0xc -> :sswitch_3f
0xd -> :sswitch_4b
0x22 -> :sswitch_2d
0x2f -> :sswitch_39
0x5c -> :sswitch_33
.end sparse-switch
.end method
.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
instance-of v0, p0, Lorg/json/JSONObject;
if-eqz v0, :cond_40
instance-of v0, p1, Lorg/json/JSONObject;
if-eqz v0, :cond_40
check-cast p0, Lorg/json/JSONObject;
check-cast p1, Lorg/json/JSONObject;
invoke-virtual {p0}, Lorg/json/JSONObject;->length()I
move-result v0
invoke-virtual {p1}, Lorg/json/JSONObject;->length()I
move-result v3
if-eq v0, v3, :cond_19
:goto_18
:cond_18
return v1
:cond_19
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:cond_1d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_18
:try_start_2f
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-static {v4, v0}, Lcom/google/android/gms/internal/io;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
:try_end_3a
.catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3a} :catch_77
move-result v0
if-nez v0, :cond_1d
goto :goto_18
:cond_3e
move v1, v2
goto :goto_18
:cond_40
instance-of v0, p0, Lorg/json/JSONArray;
if-eqz v0, :cond_70
instance-of v0, p1, Lorg/json/JSONArray;
if-eqz v0, :cond_70
check-cast p0, Lorg/json/JSONArray;
check-cast p1, Lorg/json/JSONArray;
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v0
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v3
if-ne v0, v3, :cond_18
move v0, v1
:goto_57
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_6e
:try_start_5d
invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v4
invoke-static {v3, v4}, Lcom/google/android/gms/internal/io;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
:try_end_68
.catch Lorg/json/JSONException; {:try_start_5d .. :try_end_68} :catch_75
move-result v3
if-eqz v3, :cond_18
add-int/lit8 v0, v0, 0x1
goto :goto_57
:cond_6e
move v1, v2
goto :goto_18
:cond_70
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
goto :goto_18
:catch_75
move-exception v0
goto :goto_18
:catch_77
move-exception v0
goto :goto_18
.end method