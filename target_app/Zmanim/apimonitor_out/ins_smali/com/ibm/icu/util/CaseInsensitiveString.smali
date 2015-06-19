.class public Lcom/ibm/icu/util/CaseInsensitiveString;
.super Ljava/lang/Object;
.source "CaseInsensitiveString.java"
.field private folded:Ljava/lang/String;
.field private hash:I
.field private string:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->hash:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;
iput-object p1, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;
return-void
.end method
.method private static foldCase(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getFolded()V
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/CaseInsensitiveString;->foldCase(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;
:cond_c
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
invoke-direct {p0}, Lcom/ibm/icu/util/CaseInsensitiveString;->getFolded()V
:try_start_3
move-object v0, p1
check-cast v0, Lcom/ibm/icu/util/CaseInsensitiveString;
move-object v1, v0
invoke-direct {v1}, Lcom/ibm/icu/util/CaseInsensitiveString;->getFolded()V
iget-object v5, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;
iget-object v6, v1, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_11
.catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_11} :catch_13
move-result v5
:goto_12
return v5
:catch_13
move-exception v5
move-object v2, v5
:try_start_15
move-object v0, p1
check-cast v0, Ljava/lang/String;
move-object v4, v0
iget-object v5, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;
invoke-static {v4}, Lcom/ibm/icu/util/CaseInsensitiveString;->foldCase(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_22
.catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_22} :catch_24
move-result v5
goto :goto_12
:catch_24
move-exception v5
move-object v3, v5
const/4 v5, 0x0
goto :goto_12
.end method
.method public getString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/util/CaseInsensitiveString;->getFolded()V
iget v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->hash:I
if-nez v0, :cond_f
iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
iput v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->hash:I
:cond_f
iget v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->hash:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;
return-object v0
.end method