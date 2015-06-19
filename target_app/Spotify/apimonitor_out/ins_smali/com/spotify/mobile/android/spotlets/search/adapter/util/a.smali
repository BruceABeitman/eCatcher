.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public final a:I
.field public final b:Ljava/util/List;
.method private constructor <init>(Ljava/util/List;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;->a:I
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;->b:Ljava/util/List;
return-void
.end method
.method public static a(Ljava/util/List;I)Ljava/util/List;
.registers 6
new-instance v1, Lcom/google/common/collect/g;
invoke-direct {v1}, Lcom/google/common/collect/g;-><init>()V
invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;I)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
new-instance v3, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;
invoke-direct {v3, v0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;-><init>(Ljava/util/List;I)V
invoke-virtual {v1, v3}, Lcom/google/common/collect/g;->b(Ljava/lang/Object;)Lcom/google/common/collect/g;
goto :goto_d
:cond_22
invoke-virtual {v1}, Lcom/google/common/collect/g;->a()Lcom/google/common/collect/ImmutableList;
move-result-object v0
return-object v0
.end method