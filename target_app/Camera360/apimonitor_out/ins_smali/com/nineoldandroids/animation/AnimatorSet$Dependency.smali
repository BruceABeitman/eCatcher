.class  Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "AnimatorSet.java"
.field static final AFTER:I = 0x1
.field static final WITH:I
.field public node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
.field public rule:I
.method public constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iput p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I
return-void
.end method