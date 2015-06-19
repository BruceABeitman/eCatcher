.class  Lcom/twidroid/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.field private final a:Landroid/text/Spannable;
.method public constructor <init>(Landroid/text/Spannable;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/ui/c;->a:Landroid/text/Spannable;
return-void
.end method
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
iget-object v0, p0, Lcom/twidroid/ui/c;->a:Landroid/text/Spannable;
invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I
move-result v0
iget-object v1, p0, Lcom/twidroid/ui/c;->a:Landroid/text/Spannable;
invoke-interface {v1, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I
move-result v1
sub-int/2addr v0, v1
return v0
.end method