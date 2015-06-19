.class public abstract Lcom/a/a/a/z;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/lang/String;
.field private static final b:Ljava/util/regex/Pattern;
.field private final c:Ljava/lang/String;
.field private final d:Lcom/a/a/a/bw;
.field private final e:Lcom/a/a/a/by;
.field private final f:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Crashlytics Android SDK/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/a/a/a/z;->a:Ljava/lang/String;
const-string v0, "http(s?)://[^\\/]+"
const/4 v1, 0x2
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/a/a/a/z;->b:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;Lcom/a/a/a/by;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p2, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "url must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-nez p3, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "requestFactory must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput-object p1, p0, Lcom/a/a/a/z;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/a/a/a/z;->f:Ljava/lang/String;
invoke-static {v0}, Lcom/a/a/a/bc;->e(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2d
sget-object v0, Lcom/a/a/a/z;->b:Ljava/util/regex/Pattern;
invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
iget-object v1, p0, Lcom/a/a/a/z;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
:cond_2d
iput-object p2, p0, Lcom/a/a/a/z;->c:Ljava/lang/String;
iput-object p3, p0, Lcom/a/a/a/z;->d:Lcom/a/a/a/bw;
iput-object p4, p0, Lcom/a/a/a/z;->e:Lcom/a/a/a/by;
return-void
.end method
.method protected final a(Ljava/util/Map;)Lcom/a/a/a/bz;
.registers 5
iget-object v0, p0, Lcom/a/a/a/z;->d:Lcom/a/a/a/bw;
iget-object v1, p0, Lcom/a/a/a/z;->e:Lcom/a/a/a/by;
iget-object v2, p0, Lcom/a/a/a/z;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2, p1}, Lcom/a/a/a/bw;->a(Lcom/a/a/a/by;Ljava/lang/String;Ljava/util/Map;)Lcom/a/a/a/bz;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/a/a/a/bz;->a(Z)Lcom/a/a/a/bz;
move-result-object v0
const/16 v1, 0x2710
invoke-virtual {v0, v1}, Lcom/a/a/a/bz;->a(I)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "User-Agent"
sget-object v2, Lcom/a/a/a/z;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"
const-string v2, "bca6990fc3c15a8105800c0673517a4b579634a1"
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
return-object v0
.end method
.method protected final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/a/a/a/z;->c:Ljava/lang/String;
return-object v0
.end method
.method protected final b()Lcom/a/a/a/bz;
.registers 2
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/a/a/a/z;->a(Ljava/util/Map;)Lcom/a/a/a/bz;
move-result-object v0
return-object v0
.end method