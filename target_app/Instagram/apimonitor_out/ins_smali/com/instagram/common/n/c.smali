.class final Lcom/instagram/common/n/c;
.super Ljava/lang/Object;
.source "LocaleUtils.java"
.implements Ljava/util/Iterator;
.field private final a:Ljava/lang/String;
.field private final b:[Ljava/lang/String;
.field private c:I
.method constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/n/c;->a:Ljava/lang/String;
invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/n/c;->b:[Ljava/lang/String;
return-void
.end method
.method private a()Ljava/util/Locale;
.registers 5
new-instance v0, Ljava/util/Locale;
iget-object v1, p0, Lcom/instagram/common/n/c;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/common/n/c;->b:[Ljava/lang/String;
iget v3, p0, Lcom/instagram/common/n/c;->c:I
aget-object v2, v2, v3
invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget v1, p0, Lcom/instagram/common/n/c;->c:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/instagram/common/n/c;->c:I
return-object v0
.end method
.method public final hasNext()Z
.registers 3
iget v0, p0, Lcom/instagram/common/n/c;->c:I
iget-object v1, p0, Lcom/instagram/common/n/c;->b:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public final synthetic next()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/instagram/common/n/c;->a()Ljava/util/Locale;
move-result-object v0
return-object v0
.end method
.method public final remove()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "remove not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method