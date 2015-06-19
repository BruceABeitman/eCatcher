.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V
return-void
.end method
.method public translate(Ljava/lang/String;)Ljava/lang/String;
.registers 12
const/16 v8, 0x5f
const/4 v3, 0x0
if-nez p1, :cond_6
:goto_5
:cond_5
return-object p1
:cond_6
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
new-instance v6, Ljava/lang/StringBuilder;
mul-int/lit8 v0, v5, 0x2
invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V
move v4, v3
move v2, v3
move v0, v3
:goto_14
if-ge v4, v5, :cond_4c
invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
move-result v1
if-gtz v4, :cond_1e
if-eq v1, v8, :cond_53
:cond_1e
invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z
move-result v7
if-eqz v7, :cond_48
if-nez v2, :cond_35
if-lez v0, :cond_35
add-int/lit8 v2, v0, -0x1
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v2
if-eq v2, v8, :cond_35
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
:cond_35
invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C
move-result v1
const/4 v2, 0x1
move v9, v1
move v1, v2
move v2, v0
move v0, v9
:goto_3e
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v2, 0x1
:goto_43
add-int/lit8 v2, v4, 0x1
move v4, v2
move v2, v1
goto :goto_14
:cond_48
move v2, v0
move v0, v1
move v1, v3
goto :goto_3e
:cond_4c
if-lez v0, :cond_5
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
goto :goto_5
:cond_53
move v1, v2
goto :goto_43
.end method