.class public final Lcom/spotify/mobile/android/util/bu;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 1
const-string v0, "([^=&]+)=?([^&]*)&?"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/bu;->a:Ljava/util/regex/Pattern;
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v4, 0x10
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
rem-int/lit8 v2, v2, 0x2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/Object;)V
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
:goto_19
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v0, v2, :cond_3a
add-int/lit8 v2, v0, 0x2
invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v2
add-int/lit8 v3, v0, 0x2
invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v3
xor-int/2addr v2, v3
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
add-int/lit8 v0, v0, 0x2
goto :goto_19
:cond_3a
:try_start_3a
new-instance v0, Ljava/lang/String;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
const-string v2, "UTF-16"
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_45
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3a .. :try_end_45} :catch_46
return-object v0
:catch_46
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
.registers 5
sget-object v0, Lcom/spotify/mobile/android/util/bu;->a:Ljava/util/regex/Pattern;
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_6
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_25
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v1, 0x2
invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_6
:cond_25
return-void
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " \u2014 "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method