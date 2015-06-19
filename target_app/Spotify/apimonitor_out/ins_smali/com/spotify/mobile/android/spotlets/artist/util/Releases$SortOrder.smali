.class public final enum Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
.field private static final synthetic d:[Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
.field private mOrdering:Lcom/google/common/collect/am;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
const-string v1, "NAME"
sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
invoke-static {v2}, Lcom/google/common/collect/am;->a(Ljava/util/Comparator;)Lcom/google/common/collect/am;
move-result-object v2
invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->a()Lcom/google/common/base/b;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/google/common/collect/am;->a(Lcom/google/common/base/b;)Lcom/google/common/collect/am;
move-result-object v2
invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;-><init>(Ljava/lang/String;ILcom/google/common/collect/am;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->a:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
const-string v1, "YEAR"
invoke-static {}, Lcom/google/common/collect/am;->b()Lcom/google/common/collect/am;
move-result-object v2
invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->b()Lcom/google/common/base/b;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/google/common/collect/am;->a(Lcom/google/common/base/b;)Lcom/google/common/collect/am;
move-result-object v2
invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;-><init>(Ljava/lang/String;ILcom/google/common/collect/am;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->b:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
const-string v1, "NONE"
const/4 v2, 0x0
invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;-><init>(Ljava/lang/String;ILcom/google/common/collect/am;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->c:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
const/4 v0, 0x3
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->a:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->b:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->c:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
aput-object v1, v0, v6
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->d:[Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILcom/google/common/collect/am;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->mOrdering:Lcom/google/common/collect/am;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->d:[Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;
return-object v0
.end method
.method public final a(Ljava/lang/Iterable;Z)Ljava/util/List;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->mOrdering:Lcom/google/common/collect/am;
if-nez v0, :cond_9
invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
move-result-object v0
:goto_8
return-object v0
:cond_9
if-eqz p2, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->mOrdering:Lcom/google/common/collect/am;
invoke-virtual {v0}, Lcom/google/common/collect/am;->a()Lcom/google/common/collect/am;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/common/collect/am;->a(Ljava/lang/Iterable;)Ljava/util/List;
move-result-object v0
goto :goto_8
:cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->mOrdering:Lcom/google/common/collect/am;
invoke-virtual {v0, p1}, Lcom/google/common/collect/am;->a(Ljava/lang/Iterable;)Ljava/util/List;
move-result-object v0
goto :goto_8
.end method