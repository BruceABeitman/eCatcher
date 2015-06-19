.class public Lcom/igexin/sdk/Tag;
.super Ljava/lang/Object;
.implements Ljava/io/Serializable;
.field private a:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Ljava/lang/String;)Z
.registers 6
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v2, v0
move v0, v1
:goto_9
if-ltz v2, :cond_4b
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v3, 0x4e00
if-lt v0, v3, :cond_18
const v3, 0x9fa5
if-le v0, v3, :cond_48
:cond_18
const/16 v3, 0x41
if-lt v0, v3, :cond_20
const/16 v3, 0x5a
if-le v0, v3, :cond_48
:cond_20
const/16 v3, 0x61
if-lt v0, v3, :cond_28
const/16 v3, 0x7a
if-le v0, v3, :cond_48
:cond_28
const/16 v3, 0x30
if-lt v0, v3, :cond_30
const/16 v3, 0x39
if-le v0, v3, :cond_48
:cond_30
const/16 v3, 0x2b
if-eq v0, v3, :cond_48
const/16 v3, 0x2d
if-eq v0, v3, :cond_48
const/16 v3, 0x2a
if-eq v0, v3, :cond_48
const/16 v3, 0x5f
if-eq v0, v3, :cond_48
const/16 v3, 0x20
if-eq v0, v3, :cond_48
const/16 v3, 0x3a
if-ne v0, v3, :cond_4c
:cond_48
const/4 v0, 0x1
:goto_49
if-nez v0, :cond_4e
:cond_4b
return v0
:cond_4c
move v0, v1
goto :goto_49
:cond_4e
add-int/lit8 v2, v2, -0x1
goto :goto_9
.end method
.method private b(Ljava/lang/String;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/igexin/sdk/Tag;->a(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/sdk/Tag;->a:Ljava/lang/String;
return-object v0
.end method
.method public setName(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/igexin/sdk/Tag;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8
iput-object p1, p0, Lcom/igexin/sdk/Tag;->a:Ljava/lang/String;
:cond_8
return-void
.end method