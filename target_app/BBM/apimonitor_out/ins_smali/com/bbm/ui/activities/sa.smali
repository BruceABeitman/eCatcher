.class final Lcom/bbm/ui/activities/sa;
.super Lcom/bbm/util/d/d;
.source "GroupPictureCommentsActivity.java"
.field final synthetic a:Lcom/bbm/g/o;
.field final synthetic b:I
.field final synthetic c:Lcom/bbm/ui/activities/rz;
.method constructor <init>(Lcom/bbm/ui/activities/rz;Lcom/bbm/g/o;Lcom/bbm/d/a;Lcom/bbm/g/o;I)V
.registers 6
iput-object p1, p0, Lcom/bbm/ui/activities/sa;->c:Lcom/bbm/ui/activities/rz;
iput-object p4, p0, Lcom/bbm/ui/activities/sa;->a:Lcom/bbm/g/o;
iput p5, p0, Lcom/bbm/ui/activities/sa;->b:I
invoke-direct {p0, p2, p3}, Lcom/bbm/util/d/d;-><init>(Lcom/bbm/g/o;Lcom/bbm/d/a;)V
return-void
.end method
.method protected final a(Lcom/google/b/a/l;)V
.registers 10
const/4 v7, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/sa;->c:Lcom/bbm/ui/activities/rz;
iget-object v0, v0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/sa;->a:Lcom/bbm/g/o;
invoke-static {p1, v1}, Lcom/bbm/d/b/a;->a(Lcom/google/b/a/l;Lcom/bbm/g/o;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/sa;->c:Lcom/bbm/ui/activities/rz;
iget-object v1, v0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/sa;->c:Lcom/bbm/ui/activities/rz;
iget-object v0, v0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->f(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/ui/activities/sg;
move-result-object v0
iget v2, p0, Lcom/bbm/ui/activities/sa;->b:I
invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/sg;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/ag;
iget-object v0, v0, Lcom/bbm/g/ag;->b:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/sa;->c:Lcom/bbm/ui/activities/rz;
iget-object v0, v0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/sa;->c:Lcom/bbm/ui/activities/rz;
iget-object v1, v1, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
new-instance v2, Lcom/bbm/ui/slidingmenu/a;
iget-object v3, v0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d:Ljava/lang/String;
iget-object v4, v0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b:Ljava/lang/String;
invoke-direct {v2, v7, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Lcom/bbm/ui/slidingmenu/a;
const v5, 0x7f020266
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
const v6, 0x7f0e0420
invoke-virtual {v0, v6}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v1, v3, v7, v7}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
invoke-virtual {v1, v2}, Lcom/bbm/ui/c/fm;->b(Lcom/bbm/ui/slidingmenu/a;)V
new-instance v2, Lcom/bbm/ui/activities/rv;
invoke-direct {v2, v0}, Lcom/bbm/ui/activities/rv;-><init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iput-object v2, v1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
iget-object v0, p0, Lcom/bbm/ui/activities/sa;->c:Lcom/bbm/ui/activities/rz;
iget-object v0, v0, Lcom/bbm/ui/activities/rz;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o()V
return-void
.end method