.class final Lcom/google/zxing/client/android/d/a/d;
.super Lcom/google/zxing/client/android/d/a/c;
.source "TitleRetriever.java"
.field private static final a:Ljava/util/regex/Pattern;
.field private final b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "<title>([^<]+)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/d/a/d;->a:Ljava/util/regex/Pattern;
return-void
.end method
.method constructor <init>(Landroid/widget/TextView;Lcom/google/zxing/client/a/ac;Lcom/google/zxing/client/android/c/c;)V
.registers 5
invoke-direct {p0, p1, p3}, Lcom/google/zxing/client/android/d/a/c;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/c/c;)V
iget-object v0, p2, Lcom/google/zxing/client/a/ac;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/google/zxing/client/android/d/a/d;->b:Ljava/lang/String;
return-void
.end method
.method final a()V
.registers 7
const/16 v5, 0x64
const/4 v3, 0x1
const/4 v4, 0x0
:try_start_4
iget-object v0, p0, Lcom/google/zxing/client/android/d/a/d;->b:Ljava/lang/String;
sget-object v1, Lcom/google/zxing/client/android/m;->a:Lcom/google/zxing/client/android/m;
const/16 v2, 0x1000
invoke-static {v0, v1, v2}, Lcom/google/zxing/client/android/k;->a(Ljava/lang/String;Lcom/google/zxing/client/android/m;I)Ljava/lang/CharSequence;
:try_end_d
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_58
move-result-object v0
if-eqz v0, :cond_57
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v1
if-lez v1, :cond_57
sget-object v1, Lcom/google/zxing/client/android/d/a/d;->a:Ljava/util/regex/Pattern;
invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_57
invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_57
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_57
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v5, :cond_4b
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "..."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_4b
iget-object v1, p0, Lcom/google/zxing/client/android/d/a/d;->b:Ljava/lang/String;
const/4 v2, 0x0
new-array v3, v3, [Ljava/lang/String;
aput-object v0, v3, v4
iget-object v0, p0, Lcom/google/zxing/client/android/d/a/d;->b:Ljava/lang/String;
invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/zxing/client/android/d/a/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
:goto_57
:cond_57
return-void
:catch_58
move-exception v0
goto :goto_57
.end method