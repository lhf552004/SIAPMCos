using System;
using System.Threading;

namespace Secs4Net
{
    public sealed class SystemByteGenerator
    {
        private int _systemByte = new Random(Guid.NewGuid().GetHashCode()).Next();
        public int New() => Interlocked.Increment(ref _systemByte);
    }
}
