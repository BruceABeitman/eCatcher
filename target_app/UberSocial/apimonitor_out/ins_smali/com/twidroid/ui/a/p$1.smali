.class  Lcom/twidroid/ui/a/p$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/text/util/Linkify$TransformFilter;
.field final synthetic a:Lcom/twidroid/ui/a/p;
.method constructor <init>(Lcom/twidroid/ui/a/p;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/p$1;->a:Lcom/twidroid/ui/a/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method