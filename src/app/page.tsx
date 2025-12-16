export default function HomePage() {
    return (
        <main className="min-h-screen bg-gray-50">
            {/* Header */}
            <header className="bg-white border-b">
                <div className="max-w-5xl mx-auto px-4 py-4">
                    <h1 className="text-xl font-semibold text-gray-800">
                        VN Procedures
                    </h1>
                </div>
            </header>

            {/* Hero */}
            <section className="max-w-5xl mx-auto px-4 py-16">
                <h2 className="text-3xl font-bold text-gray-900 mb-4">
                    Tra cứu thủ tục hành chính dễ hiểu
                </h2>
            </section>
        </main>
    );
}
