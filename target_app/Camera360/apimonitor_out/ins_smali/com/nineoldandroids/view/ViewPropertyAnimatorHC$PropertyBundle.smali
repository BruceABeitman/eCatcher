.class  Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"
.field  mNameValuesHolder:Ljava/util/ArrayList;
.field  mPropertyMask:I
.method constructor <init>(ILjava/util/ArrayList;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I
iput-object p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;
return-void
.end method
.method  cancel(I)Z
.registers 7
iget v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I
and-int/2addr v3, p1
if-eqz v3, :cond_12
iget-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;
if-eqz v3, :cond_12
iget-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x0
:goto_10
if-lt v1, v0, :cond_14
:cond_12
const/4 v3, 0x0
:goto_13
return v3
:cond_14
iget-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;
iget v3, v2, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mNameConstant:I
if-ne v3, p1, :cond_2e
iget-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
iget v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I
xor-int/lit8 v4, p1, -0x1
and-int/2addr v3, v4
iput v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I
const/4 v3, 0x1
goto :goto_13
:cond_2e
add-int/lit8 v1, v1, 0x1
goto :goto_10
.end method