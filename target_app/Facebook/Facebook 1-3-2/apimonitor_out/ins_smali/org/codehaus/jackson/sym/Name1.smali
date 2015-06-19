.class public final Lorg/codehaus/jackson/sym/Name1;
.super Lorg/codehaus/jackson/sym/Name;
.field static final sEmptyName:Lorg/codehaus/jackson/sym/Name1;
.field final mQuad:I
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
new-instance v0, Lorg/codehaus/jackson/sym/Name1;
const-string v1, ""
invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V
sput-object v0, Lorg/codehaus/jackson/sym/Name1;->sEmptyName:Lorg/codehaus/jackson/sym/Name1;
return-void
.end method
.method constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lorg/codehaus/jackson/sym/Name1;->mQuad:I
return-void
.end method
.method static final getEmptyName()Lorg/codehaus/jackson/sym/Name1;
.registers 1
sget-object v0, Lorg/codehaus/jackson/sym/Name1;->sEmptyName:Lorg/codehaus/jackson/sym/Name1;
return-object v0
.end method
.method public equals(I)Z
.registers 3
iget v0, p0, Lorg/codehaus/jackson/sym/Name1;->mQuad:I
if-ne p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public equals(II)Z
.registers 4
iget v0, p0, Lorg/codehaus/jackson/sym/Name1;->mQuad:I
if-ne p1, v0, :cond_8
if-nez p2, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public equals([II)Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
if-ne p2, v3, :cond_c
aget v0, p1, v2
iget v1, p0, Lorg/codehaus/jackson/sym/Name1;->mQuad:I
if-ne v0, v1, :cond_c
move v0, v3
:goto_b
return v0
:cond_c
move v0, v2
goto :goto_b
.end method