.class final Lcom/coremedia/iso/j;
.super Ljava/lang/Object;
.source "PropertyBoxParserImpl.java"
.field final synthetic a:Lcom/coremedia/iso/i;
.field private b:Ljava/lang/String;
.field private c:[B
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:[Ljava/lang/String;
.method public constructor <init>(Lcom/coremedia/iso/i;Ljava/lang/String;[BLjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/coremedia/iso/j;->a:Lcom/coremedia/iso/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/coremedia/iso/j;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/coremedia/iso/j;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/coremedia/iso/j;->c:[B
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/j;->e:Ljava/lang/String;
return-object v0
.end method
.method public final b()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/j;->f:[Ljava/lang/String;
return-object v0
.end method
.method public final c()Lcom/coremedia/iso/j;
.registers 5
iget-object v0, p0, Lcom/coremedia/iso/j;->c:[B
if-eqz v0, :cond_a1
const-string v0, "uuid"
iget-object v1, p0, Lcom/coremedia/iso/j;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_16
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "we have a userType but no uuid box type. Something\'s wrong"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
iget-object v0, p0, Lcom/coremedia/iso/j;->a:Lcom/coremedia/iso/i;
iget-object v0, v0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/coremedia/iso/j;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "-uuid["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/coremedia/iso/j;->c:[B
invoke-static {v2}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_70
iget-object v0, p0, Lcom/coremedia/iso/j;->a:Lcom/coremedia/iso/i;
iget-object v0, v0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "uuid["
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/coremedia/iso/j;->c:[B
invoke-static {v2}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_70
if-nez v0, :cond_7c
iget-object v0, p0, Lcom/coremedia/iso/j;->a:Lcom/coremedia/iso/i;
iget-object v0, v0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
const-string v1, "uuid"
invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_7c
:goto_7c
if-nez v0, :cond_88
iget-object v0, p0, Lcom/coremedia/iso/j;->a:Lcom/coremedia/iso/i;
iget-object v0, v0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
const-string v1, "default"
invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_88
if-nez v0, :cond_d1
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No box object found for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/coremedia/iso/j;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a1
iget-object v0, p0, Lcom/coremedia/iso/j;->a:Lcom/coremedia/iso/i;
iget-object v0, v0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/coremedia/iso/j;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/coremedia/iso/j;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_7c
iget-object v0, p0, Lcom/coremedia/iso/j;->a:Lcom/coremedia/iso/i;
iget-object v0, v0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
iget-object v1, p0, Lcom/coremedia/iso/j;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_7c
:cond_d1
iget-object v1, p0, Lcom/coremedia/iso/j;->a:Lcom/coremedia/iso/i;
iget-object v1, v1, Lcom/coremedia/iso/i;->c:Ljava/util/regex/Pattern;
invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-nez v2, :cond_f4
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Cannot work with that constructor: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f4
const/4 v0, 0x1
invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/j;->e:Ljava/lang/String;
const/4 v0, 0x2
invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/j;->f:[Ljava/lang/String;
return-object p0
.end method