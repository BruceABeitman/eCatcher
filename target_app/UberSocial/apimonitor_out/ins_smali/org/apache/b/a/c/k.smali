.class public abstract Lorg/apache/b/a/c/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "^([\\x21-\\x39\\x3b-\\x7e]+)[ \t]*:"
.field private static final b:Ljava/util/regex/Pattern; = null
.field private static final c:Lorg/apache/b/a/c/i; = null
.field public static final h:Ljava/lang/String; = "Sender"
.field public static final i:Ljava/lang/String; = "From"
.field public static final j:Ljava/lang/String; = "To"
.field public static final k:Ljava/lang/String; = "Cc"
.field public static final l:Ljava/lang/String; = "Bcc"
.field public static final m:Ljava/lang/String; = "Reply-To"
.field public static final n:Ljava/lang/String; = "Resent-Sender"
.field public static final o:Ljava/lang/String; = "Resent-From"
.field public static final p:Ljava/lang/String; = "Resent-To"
.field public static final q:Ljava/lang/String; = "Resent-Cc"
.field public static final r:Ljava/lang/String; = "Resent-Bcc"
.field public static final s:Ljava/lang/String; = "Date"
.field public static final t:Ljava/lang/String; = "Resent-Date"
.field public static final u:Ljava/lang/String; = "Subject"
.field public static final v:Ljava/lang/String; = "Content-Type"
.field public static final w:Ljava/lang/String; = "Content-Transfer-Encoding"
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "^([\\x21-\\x39\\x3b-\\x7e]+)[ \t]*:"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lorg/apache/b/a/c/k;->b:Ljava/util/regex/Pattern;
new-instance v0, Lorg/apache/b/a/c/i;
invoke-direct {v0}, Lorg/apache/b/a/c/i;-><init>()V
sput-object v0, Lorg/apache/b/a/c/k;->c:Lorg/apache/b/a/c/i;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/b/a/c/k;->d:Ljava/lang/String;
iput-object p2, p0, Lorg/apache/b/a/c/k;->e:Ljava/lang/String;
iput-object p3, p0, Lorg/apache/b/a/c/k;->f:Ljava/lang/String;
return-void
.end method
.method public static d(Ljava/lang/String;)Lorg/apache/b/a/c/k;
.registers 6
const/4 v4, 0x1
const-string v0, "\r|\n"
const-string v1, ""
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lorg/apache/b/a/c/k;->b:Ljava/util/regex/Pattern;
invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-nez v2, :cond_1d
new-instance v0, Lorg/apache/b/a/a;
const-string v1, "Invalid field in string"
invoke-direct {v0, v1}, Lorg/apache/b/a/a;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_3c
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v3, 0x20
if-ne v1, v3, :cond_3c
invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_3c
sget-object v1, Lorg/apache/b/a/c/k;->c:Lorg/apache/b/a/c/i;
invoke-virtual {v1, v2, v0, p0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/c/k;
move-result-object v0
return-object v0
.end method
.method public static g()Lorg/apache/b/a/c/i;
.registers 1
sget-object v0, Lorg/apache/b/a/c/k;->c:Lorg/apache/b/a/c/i;
return-object v0
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/k;->d:Ljava/lang/String;
return-object v0
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/k;->f:Ljava/lang/String;
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/k;->e:Ljava/lang/String;
return-object v0
.end method
.method public k()Z
.registers 3
const-string v0, "Content-Type"
iget-object v1, p0, Lorg/apache/b/a/c/k;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public l()Z
.registers 3
const-string v0, "Subject"
iget-object v1, p0, Lorg/apache/b/a/c/k;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public m()Z
.registers 3
const-string v0, "From"
iget-object v1, p0, Lorg/apache/b/a/c/k;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public n()Z
.registers 3
const-string v0, "To"
iget-object v1, p0, Lorg/apache/b/a/c/k;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/k;->f:Ljava/lang/String;
return-object v0
.end method