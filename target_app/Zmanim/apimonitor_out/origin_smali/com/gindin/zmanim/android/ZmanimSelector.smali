.class public Lcom/gindin/zmanim/android/ZmanimSelector;
.super Ljava/lang/Object;
.source "ZmanimSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gindin/zmanim/android/ZmanimSelector$SelectorRow;,
        Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final description:Landroid/widget/TextView;

.field private final dialog:Landroid/app/Dialog;

.field private final listView:Landroid/widget/ListView;

.field private final name:Landroid/widget/TextView;

.field private typeSelectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;

.field private typeToSelectFrom:Lcom/gindin/zmanim/times/Zmanim$Type;

.field private final zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->dialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->dialog:Landroid/app/Dialog;

    const v4, 0x7f050015

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->name:Landroid/widget/TextView;

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->description:Landroid/widget/TextView;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/gindin/zmanim/android/ZmanimSelector$1;

    invoke-direct {v4, p0}, Lcom/gindin/zmanim/android/ZmanimSelector$1;-><init>(Lcom/gindin/zmanim/android/ZmanimSelector;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gindin/zmanim/android/ZmanimSelector;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gindin/zmanim/android/ZmanimSelector;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gindin/zmanim/android/ZmanimSelector;)Lcom/gindin/zmanim/times/Zmanim$Type;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->typeToSelectFrom:Lcom/gindin/zmanim/times/Zmanim$Type;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gindin/zmanim/android/ZmanimSelector;)Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->typeSelectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gindin/zmanim/android/ZmanimSelector;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;

    return-object v0
.end method


# virtual methods
.method selectFrom(Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;)V
    .registers 7

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->typeToSelectFrom:Lcom/gindin/zmanim/times/Zmanim$Type;

    iput-object p2, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->typeSelectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;

    invoke-virtual {v2, p1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->get(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zmanim;

    move-result-object v1

    new-instance v0, Lcom/gindin/zmanim/android/ZmanimSelector$2;

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/gindin/zmanim/times/Zmanim;->toArray()[Lcom/gindin/zmanim/times/Zman;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/gindin/zmanim/android/ZmanimSelector$2;-><init>(Lcom/gindin/zmanim/android/ZmanimSelector;Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->name:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/gindin/zmanim/times/Zmanim$Type;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->description:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/gindin/zmanim/times/Zmanim$Type;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method
