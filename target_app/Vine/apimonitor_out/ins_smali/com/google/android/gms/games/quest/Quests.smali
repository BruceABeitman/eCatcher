.class public interface abstract Lcom/google/android/gms/games/quest/Quests;
.super Ljava/lang/Object;
.field public static final EXTRA_QUEST:Ljava/lang/String; = "quest"
.field public static final SELECT_ACCEPTED:I = 0x3
.field public static final SELECT_COMPLETED:I = 0x4
.field public static final SELECT_COMPLETED_UNCLAIMED:I = 0x65
.field public static final SELECT_ENDING_SOON:I = 0x66
.field public static final SELECT_EXPIRED:I = 0x5
.field public static final SELECT_FAILED:I = 0x6
.field public static final SELECT_OPEN:I = 0x2
.field public static final SELECT_UPCOMING:I = 0x1
.field public static final SORT_ORDER_ENDING_SOON_FIRST:I = 0x1
.field public static final SORT_ORDER_RECENTLY_UPDATED_FIRST:I
.field public static final TW:[I
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x8
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lcom/google/android/gms/games/quest/Quests;->TW:[I
return-void
:array_a
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x65t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x66t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public abstract accept(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract getQuestIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;
.end method
.method public abstract getQuestsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Landroid/content/Intent;
.end method
.method public abstract load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public varargs abstract loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract registerQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
.end method
.method public abstract unregisterQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method