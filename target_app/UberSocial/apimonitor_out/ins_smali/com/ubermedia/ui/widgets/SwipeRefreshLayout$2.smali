.class  Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "SourceFile"
.field final synthetic a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
.method constructor <init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V
.registers 2
iput-object p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$2;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
return-void
.end method
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 6
iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$2;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
invoke-static {v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->d(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)F
move-result v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$2;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
invoke-static {v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->d(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)F
move-result v2
sub-float/2addr v1, v2
mul-float/2addr v1, p1
add-float/2addr v0, v1
iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$2;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->e(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Lcom/ubermedia/ui/widgets/b;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/ubermedia/ui/widgets/b;->a(F)V
return-void
.end method