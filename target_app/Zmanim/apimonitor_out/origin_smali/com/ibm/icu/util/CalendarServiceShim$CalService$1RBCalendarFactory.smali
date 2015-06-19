.class Lcom/ibm/icu/util/CalendarServiceShim$CalService$1RBCalendarFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "CalendarServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/util/CalendarServiceShim$CalService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RBCalendarFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/util/CalendarServiceShim$CalService;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/CalendarServiceShim$CalService;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/util/CalendarServiceShim$CalService$1RBCalendarFactory;->this$0:Lcom/ibm/icu/util/CalendarServiceShim$CalService;

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5

    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method
