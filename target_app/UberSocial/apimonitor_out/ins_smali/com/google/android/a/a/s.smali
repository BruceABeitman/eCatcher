.class public Lcom/google/android/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"
.field public a:I
.field public b:I
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field public f:J
.field public g:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/google/android/a/a/s;
.registers 6
const/4 v4, 0x0
const/16 v0, 0x3a
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-ne v1, v0, :cond_22
const-string v0, ""
:goto_c
const-string v1, "|"
invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
array-length v2, v1
const/4 v3, 0x6
if-ge v2, v3, :cond_37
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Wrong number of fields."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-lt v0, v2, :cond_30
const-string v0, ""
:goto_2e
move-object p0, v1
goto :goto_c
:cond_30
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
goto :goto_2e
:cond_37
new-instance v2, Lcom/google/android/a/a/s;
invoke-direct {v2}, Lcom/google/android/a/a/s;-><init>()V
iput-object v0, v2, Lcom/google/android/a/a/s;->g:Ljava/lang/String;
aget-object v0, v1, v4
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, v2, Lcom/google/android/a/a/s;->a:I
const/4 v0, 0x1
aget-object v0, v1, v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, v2, Lcom/google/android/a/a/s;->b:I
const/4 v0, 0x2
aget-object v0, v1, v0
iput-object v0, v2, Lcom/google/android/a/a/s;->c:Ljava/lang/String;
const/4 v0, 0x3
aget-object v0, v1, v0
iput-object v0, v2, Lcom/google/android/a/a/s;->d:Ljava/lang/String;
const/4 v0, 0x4
aget-object v0, v1, v0
iput-object v0, v2, Lcom/google/android/a/a/s;->e:Ljava/lang/String;
const/4 v0, 0x5
aget-object v0, v1, v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, v2, Lcom/google/android/a/a/s;->f:J
return-object v2
.end method
.method public toString()Ljava/lang/String;
.registers 6
const-string v0, "|"
const/4 v1, 0x6
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/google/android/a/a/s;->a:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget v3, p0, Lcom/google/android/a/a/s;->b:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
iget-object v3, p0, Lcom/google/android/a/a/s;->c:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x3
iget-object v3, p0, Lcom/google/android/a/a/s;->d:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x4
iget-object v3, p0, Lcom/google/android/a/a/s;->e:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x5
iget-wide v3, p0, Lcom/google/android/a/a/s;->f:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method