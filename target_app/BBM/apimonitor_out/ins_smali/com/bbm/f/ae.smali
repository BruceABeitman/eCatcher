.class public final Lcom/bbm/f/ae;
.super Ljava/lang/Object;
.source "ServiceLayer.java"
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field public f:Ljava/lang/String;
.field public g:Ljava/lang/String;
.field public h:Ljava/lang/String;
.field public i:Z
.field public j:Z
.field public k:Lcom/bbm/ak;
.field private l:Z
.field private m:Z
.field private n:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->e:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->h:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/f/ae;->i:Z
iput-boolean v1, p0, Lcom/bbm/f/ae;->l:Z
iput-boolean v1, p0, Lcom/bbm/f/ae;->m:Z
iput-boolean v1, p0, Lcom/bbm/f/ae;->n:Z
iput-boolean v1, p0, Lcom/bbm/f/ae;->j:Z
sget-object v0, Lcom/bbm/ak;->a:Lcom/bbm/ak;
iput-object v0, p0, Lcom/bbm/f/ae;->k:Lcom/bbm/ak;
iput-boolean v1, p0, Lcom/bbm/f/ae;->i:Z
return-void
.end method
.method constructor <init>(Lcom/bbm/ak;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v1, ""
iput-object v1, p0, Lcom/bbm/f/ae;->a:Ljava/lang/String;
const-string v1, ""
iput-object v1, p0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
const-string v1, ""
iput-object v1, p0, Lcom/bbm/f/ae;->c:Ljava/lang/String;
const-string v1, ""
iput-object v1, p0, Lcom/bbm/f/ae;->d:Ljava/lang/String;
const-string v1, ""
iput-object v1, p0, Lcom/bbm/f/ae;->e:Ljava/lang/String;
const-string v1, ""
iput-object v1, p0, Lcom/bbm/f/ae;->f:Ljava/lang/String;
const-string v1, ""
iput-object v1, p0, Lcom/bbm/f/ae;->g:Ljava/lang/String;
const-string v1, ""
iput-object v1, p0, Lcom/bbm/f/ae;->h:Ljava/lang/String;
iput-boolean v0, p0, Lcom/bbm/f/ae;->i:Z
iput-boolean v0, p0, Lcom/bbm/f/ae;->l:Z
iput-boolean v0, p0, Lcom/bbm/f/ae;->m:Z
iput-boolean v0, p0, Lcom/bbm/f/ae;->n:Z
iput-boolean v0, p0, Lcom/bbm/f/ae;->j:Z
sget-object v1, Lcom/bbm/ak;->a:Lcom/bbm/ak;
iput-object v1, p0, Lcom/bbm/f/ae;->k:Lcom/bbm/ak;
sget-object v1, Lcom/bbm/ak;->a:Lcom/bbm/ak;
if-eq v1, p1, :cond_37
const/4 v0, 0x1
:cond_37
iput-boolean v0, p0, Lcom/bbm/f/ae;->j:Z
iput-object p1, p0, Lcom/bbm/f/ae;->k:Lcom/bbm/ak;
return-void
.end method
.method public constructor <init>(Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;Lcom/rim/bbm/BbmPlatformService$BbmTokenState;Lcom/rim/bbm/BbmPlatformService$PinState;)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->e:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/f/ae;->h:Ljava/lang/String;
iput-boolean v2, p0, Lcom/bbm/f/ae;->i:Z
iput-boolean v2, p0, Lcom/bbm/f/ae;->l:Z
iput-boolean v2, p0, Lcom/bbm/f/ae;->m:Z
iput-boolean v2, p0, Lcom/bbm/f/ae;->n:Z
iput-boolean v2, p0, Lcom/bbm/f/ae;->j:Z
sget-object v0, Lcom/bbm/ak;->a:Lcom/bbm/ak;
iput-object v0, p0, Lcom/bbm/f/ae;->k:Lcom/bbm/ak;
if-eqz p1, :cond_9d
iget-object v0, p1, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->username:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->ecoid:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/ae;->e:Ljava/lang/String;
iget-object v0, p1, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->screenname:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/ae;->f:Ljava/lang/String;
iget-object v0, p1, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->firstname:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/ae;->g:Ljava/lang/String;
iget-object v0, p1, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->lastname:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/ae;->h:Ljava/lang/String;
iget-object v0, p1, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
sget-object v3, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_SUCCESS:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
if-ne v0, v3, :cond_9b
move v0, v1
:goto_64
iput-boolean v0, p0, Lcom/bbm/f/ae;->l:Z
:goto_66
if-eqz p2, :cond_a2
iget-object v0, p2, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/ae;->c:Ljava/lang/String;
iget-object v0, p2, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
sget-object v3, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_SUCCESS:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
if-ne v0, v3, :cond_a0
move v0, v1
:goto_77
iput-boolean v0, p0, Lcom/bbm/f/ae;->m:Z
:goto_79
if-eqz p3, :cond_a7
iget-object v0, p3, Lcom/rim/bbm/BbmPlatformService$PinState;->pin:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/ae;->a:Ljava/lang/String;
iget-object v0, p3, Lcom/rim/bbm/BbmPlatformService$PinState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
sget-object v3, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_SUCCESS:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
if-ne v0, v3, :cond_a5
move v0, v1
:goto_8a
iput-boolean v0, p0, Lcom/bbm/f/ae;->n:Z
:goto_8c
iget-boolean v0, p0, Lcom/bbm/f/ae;->l:Z
if-eqz v0, :cond_aa
iget-boolean v0, p0, Lcom/bbm/f/ae;->m:Z
if-eqz v0, :cond_aa
iget-boolean v0, p0, Lcom/bbm/f/ae;->n:Z
if-eqz v0, :cond_aa
:goto_98
iput-boolean v1, p0, Lcom/bbm/f/ae;->i:Z
return-void
:cond_9b
move v0, v2
goto :goto_64
:cond_9d
iput-boolean v2, p0, Lcom/bbm/f/ae;->l:Z
goto :goto_66
:cond_a0
move v0, v2
goto :goto_77
:cond_a2
iput-boolean v2, p0, Lcom/bbm/f/ae;->m:Z
goto :goto_79
:cond_a5
move v0, v2
goto :goto_8a
:cond_a7
iput-boolean v2, p0, Lcom/bbm/f/ae;->n:Z
goto :goto_8c
:cond_aa
move v1, v2
goto :goto_98
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/bbm/f/ae;
iget-boolean v2, p0, Lcom/bbm/f/ae;->j:Z
iget-boolean v3, p1, Lcom/bbm/f/ae;->j:Z
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p0, Lcom/bbm/f/ae;->k:Lcom/bbm/ak;
iget-object v3, p1, Lcom/bbm/f/ae;->k:Lcom/bbm/ak;
if-eq v2, v3, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget-boolean v2, p0, Lcom/bbm/f/ae;->i:Z
iget-boolean v3, p1, Lcom/bbm/f/ae;->i:Z
if-eq v2, v3, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-boolean v2, p0, Lcom/bbm/f/ae;->n:Z
iget-boolean v3, p1, Lcom/bbm/f/ae;->n:Z
if-eq v2, v3, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-boolean v2, p0, Lcom/bbm/f/ae;->l:Z
iget-boolean v3, p1, Lcom/bbm/f/ae;->l:Z
if-eq v2, v3, :cond_3d
move v0, v1
goto :goto_4
:cond_3d
iget-boolean v2, p0, Lcom/bbm/f/ae;->m:Z
iget-boolean v3, p1, Lcom/bbm/f/ae;->m:Z
if-eq v2, v3, :cond_45
move v0, v1
goto :goto_4
:cond_45
iget-object v2, p0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/f/ae;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_51
move v0, v1
goto :goto_4
:cond_51
iget-object v2, p0, Lcom/bbm/f/ae;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/f/ae;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_5d
move v0, v1
goto :goto_4
:cond_5d
iget-object v2, p0, Lcom/bbm/f/ae;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/f/ae;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_69
move v0, v1
goto :goto_4
:cond_69
iget-object v2, p0, Lcom/bbm/f/ae;->g:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/f/ae;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_75
move v0, v1
goto :goto_4
:cond_75
iget-object v2, p0, Lcom/bbm/f/ae;->h:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/f/ae;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_81
move v0, v1
goto :goto_4
:cond_81
iget-object v2, p0, Lcom/bbm/f/ae;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/f/ae;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
move v0, v1
goto/16 :goto_4
:cond_8e
iget-object v2, p0, Lcom/bbm/f/ae;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/f/ae;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9b
move v0, v1
goto/16 :goto_4
:cond_9b
iget-object v2, p0, Lcom/bbm/f/ae;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/f/ae;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public final hashCode()I
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/f/ae;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
iget-object v3, p0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-object v3, p0, Lcom/bbm/f/ae;->c:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-object v3, p0, Lcom/bbm/f/ae;->d:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-object v3, p0, Lcom/bbm/f/ae;->e:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-object v3, p0, Lcom/bbm/f/ae;->f:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-object v3, p0, Lcom/bbm/f/ae;->g:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-object v3, p0, Lcom/bbm/f/ae;->h:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/f/ae;->i:Z
if-eqz v0, :cond_78
move v0, v1
:goto_4e
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/f/ae;->l:Z
if-eqz v0, :cond_7a
move v0, v1
:goto_56
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/f/ae;->m:Z
if-eqz v0, :cond_7c
move v0, v1
:goto_5e
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/f/ae;->n:Z
if-eqz v0, :cond_7e
move v0, v1
:goto_66
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-boolean v3, p0, Lcom/bbm/f/ae;->j:Z
if-eqz v3, :cond_80
:goto_6d
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/bbm/f/ae;->k:Lcom/bbm/ak;
invoke-virtual {v1}, Lcom/bbm/ak;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
:cond_78
move v0, v2
goto :goto_4e
:cond_7a
move v0, v2
goto :goto_56
:cond_7c
move v0, v2
goto :goto_5e
:cond_7e
move v0, v2
goto :goto_66
:cond_80
move v1, v2
goto :goto_6d
.end method